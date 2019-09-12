unit App;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ControliD, Vcl.StdCtrls, StrUtils,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.CheckLst, UnitProduct, UnitProductService;

type
  TAppForm = class(TForm)
    ButtonUnlock: TButton;
    ComboBoxProduct: TComboBox;
    LabelProduct: TLabel;
    LabelProductQuantity: TLabel;
    EditProductQuantity: TEdit;
    ButtonAddToCart: TButton;
    CheckListBox1: TCheckListBox;
    ButtonRemoveCartItem: TButton;
    LabelCart: TLabel;
    ButtonCheckout: TButton;
    ButtonLock: TButton;
    LabelProductPrice: TLabel;
    LabelCartTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EditProductQuantityExit(Sender: TObject);
    procedure ButtonRemoveCartItemClick(Sender: TObject);
    procedure ButtonUnlockClick(Sender: TObject);
    procedure ButtonLockClick(Sender: TObject);
  private
    { Private declarations }
    procedure LockApp;
    procedure UnlockApp;
    procedure ChangeComponentsVisibility(Visible: Boolean);
  public
    { Public declarations }
  end;

var
  AppForm: TAppForm;
  LeitorBiometrico: CIDBio;
  ProductService: TProductService;

implementation

{$R *.dfm}

procedure TAppForm.FormCreate(Sender: TObject);
var
  Product: TProduct;
  Products: TList;

begin
  LockApp;

  LeitorBiometrico := CIDBio.Create;
  LeitorBiometrico.Init;

  ProductService := TProductService.Create;
  ProductService.CreateDefaults;

  Products := ProductService.ListAll;

  for Product in Products do
  begin
    ComboBoxProduct.AddItem(Product.Name, TObject(Product.ID));
  end;
end;

procedure TAppForm.ButtonLockClick(Sender: TObject);
begin
  LockApp;
end;

procedure TAppForm.ButtonRemoveCartItemClick(Sender: TObject);
begin
  CheckListBox1.AddItem('Item ' + IntToStr(CheckListBox1.Count), Sender);
end;

procedure TAppForm.ButtonUnlockClick(Sender: TObject);
var
  ID: Int64;
  Score, Quality: Integer;
  Code: RetCode;
begin
  Code := LeitorBiometrico.CaptureAndIdentify(ID, Score, Quality);

  if RetCode.ERROR_NOT_IDENTIFIED = Code then
  begin
    ShowMessage('Não identificado, tente novamnete...');
  end;

  if (RetCode.SUCCESS = Code) and ((ID = 1) or (ID = 2)) then
  begin
    ShowMessage('Desbloqueado!');
    UnlockApp;
  end;

end;

procedure TAppForm.EditProductQuantityExit(Sender: TObject);
var
  Text: string;
begin
  Text := EditProductQuantity.Text;

  if Text = '' then
  begin
    Text := '0';
  end;

  EditProductQuantity.Text := Text;
end;

procedure TAppForm.LockApp;
begin
  ChangeComponentsVisibility(False);
  ButtonUnlock.Enabled := True;
end;

procedure TAppForm.UnlockApp;
begin
  ChangeComponentsVisibility(True);
  ButtonUnlock.Enabled := False;
end;

procedure TAppForm.ChangeComponentsVisibility(Visible: Boolean);
var
  I: Integer;
  Component: TComponent;
begin
  for I := 0 to (Self.ComponentCount - 1) do
  begin
    Component := Self.Components[I];

    if Component is TButton then
    begin
      (Component as TButton).Enabled := Visible;
    end
    else if Component is TEdit then
    begin
      (Component as TEdit).Enabled := Visible;
    end
    else if Component is TComboBox then
    begin
      (Component as TComboBox).Enabled := Visible;
    end
    else if Component is TLabel then
    begin
      (Component as TLabel).Enabled := Visible;
    end;
  end;
end;

end.

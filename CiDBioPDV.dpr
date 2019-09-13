program CiDBioPDV;

uses
  Vcl.Forms,
  FApp in 'FApp.pas' {FormApp},
  ControliD in 'ControliD.pas',
  UProduct in 'UProduct.pas',
  UProductManager in 'UProductManager.pas',
  UProductService in 'UProductService.pas',
  UOrder in 'UOrder.pas',
  UOrderManager in 'UOrderManager.pas',
  UOrderService in 'UOrderService.pas',
  FCreateUser in 'FCreateUser.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormApp, FormApp);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

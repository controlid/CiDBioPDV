unit UProductManager;

interface

uses System.Classes, UProduct;

type

TProductManager = class(TObject)
  private
    FProducts: TList;
    FNextID: Integer;

  public
    property NextID: Integer read FNextID;

    constructor Create;
    procedure Add(pProduct: TProduct);
    function GetAll: TList;

end;

implementation

{ TProductManager }

constructor TProductManager.Create;
begin
  inherited Create;
  FProducts := TList.Create;
  FNextID := 1;
end;

procedure TProductManager.Add(pProduct: TProduct);
begin
  FProducts.Add(pProduct);
  FNextID := FNextID + 1;
end;

function TProductManager.GetAll: TList;
begin
  Result := FProducts;
end;

end.

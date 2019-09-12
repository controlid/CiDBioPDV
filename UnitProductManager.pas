unit UnitProductManager;

interface

uses System.Classes, UnitProduct;

type

TProductManager = class(TObject)
  private
    FProducts: TList;
    FNextID: Integer;

  public
    property NextID: Integer read FNextID;

    constructor Create;
    procedure Add(pProduct: TProduct);
    function Get: TList;

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

function TProductManager.Get: TList;
begin
  Result := FProducts;
end;

end.

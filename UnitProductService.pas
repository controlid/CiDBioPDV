unit UnitProductService;

interface

uses UnitProductManager, UnitProduct;

type

TProductService = class(TObject)
  private
    FProductManager: TProductManager;

  public
    constructor Create;
    procedure CreateDefaults;
    function CreateProduct(pProductName: string; pProductPrice: integer): Integer;

end;

implementation

{ TProductService }

constructor TProductService.Create;
begin
  inherited Create;
  FProductManager := TProductManager.Create;
end;

procedure TProductService.CreateDefaults;
begin
  CreateProduct('iDClass 1510', 10);
  CreateProduct('iDClass 373', 10);
  CreateProduct('iDAccess', 10);
  CreateProduct('iDAccess Pro', 10);
  CreateProduct('iDAccess Nano', 10);
  CreateProduct('iDAccess Nano Slave', 10);
  CreateProduct('iDFit 4x2', 10);
  CreateProduct('iDFlex', 10);
  CreateProduct('iDFlex IP65', 10);

end;

function TProductService.CreateProduct(pProductName: string; pProductPrice: integer): Integer;
var
  Product: TProduct;
begin
  Product := TProduct.Create;
  Product.ID := FProductManager.NextID;
  Product.Name := pProductName;
  Product.Price := pProductPrice;

  FProductManager.Add(Product);
end;

end.

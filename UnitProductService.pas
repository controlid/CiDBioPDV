unit UnitProductService;

interface

uses UnitProductManager, UnitProduct, System.Classes;

type

TProductService = class(TObject)
  private
    FProductManager: TProductManager;

  public
    constructor Create;
    procedure CreateDefaults;
    function CreateProduct(pProductName: string; pProductPrice: integer): Integer;
    function ListAll: TList;

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
  CreateProduct('iDClass 1510', 3);
  CreateProduct('iDClass 373', 5);
  CreateProduct('iDAccess', 8);
  CreateProduct('iDAccess Pro', 9);
  CreateProduct('iDAccess Nano', 4);
  CreateProduct('iDAccess Nano Slave', 7);
  CreateProduct('iDFit 4x2', 9);
  CreateProduct('iDFlex', 6);
  CreateProduct('iDFlex IP65', 8);
  CreateProduct('iDTouch', 3);
  CreateProduct('iDBox', 2);
  CreateProduct('iDBlock Preta', 8);
  CreateProduct('iDBlock Inox', 9);
  CreateProduct('iDBlock Braço Articulado', 7);
  CreateProduct('iDBlock Balcão', 5);
  CreateProduct('iDBlock PNE', 2);
  CreateProduct('iDProx Compact', 3);
  CreateProduct('iDProx Slim', 7);
  CreateProduct('iDBio', 5);
  CreateProduct('Print iD', 9);
  CreateProduct('Print iD Touch', 6);
  CreateProduct('SAT iD', 5);
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

function TProductService.ListAll: TList;
begin
  Result := FProductManager.Get;
end;

end.

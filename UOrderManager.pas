unit UOrderManager;

interface

uses System.Classes, UOrder;

type

TOrderManager = class(TObject)
  private
    FOrders: TList;
    FNextID: Integer;

  public
    property NextID: Integer read FNextID;

    constructor Create;
    procedure Add(pOrder: TOrder);
    function GetAll: TList;

end;

implementation

{ TProductManager }

constructor TOrderManager.Create;
begin
  inherited Create;
  FOrders := TList.Create;
  FNextID := 1;
end;

procedure TOrderManager.Add(pOrder: TOrder);
begin
  FOrders.Add(pOrder);
  FNextID := FNextID + 1;
end;

function TOrderManager.GetAll: TList;
begin
  Result := FOrders;
end;

end.

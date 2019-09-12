program CiDBioPDV;

uses
  Vcl.Forms,
  App in 'App.pas' {AppForm},
  ControliD in 'ControliD.pas',
  UnitProduct in 'UnitProduct.pas',
  UnitProductManager in 'UnitProductManager.pas',
  UnitProductService in 'UnitProductService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAppForm, AppForm);
  Application.Run;
end.

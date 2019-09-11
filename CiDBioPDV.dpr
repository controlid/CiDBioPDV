program CiDBioPDV;

uses
  Vcl.Forms,
  App in 'App.pas' {AppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAppForm, AppForm);
  Application.Run;
end.

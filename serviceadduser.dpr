program serviceadduser;

uses
  Vcl.SvcMgr,
  ServiceUnit in 'ServiceUnit.pas' {Service1: TService},
  BackgroundThreadUnit in 'BackgroundThreadUnit.pas';

{$R *.RES}

begin
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  Application.CreateForm(TMyService, MyService);
  Application.Run;

end.

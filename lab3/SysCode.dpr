program SysCode;

uses
  Forms,
  lab_3 in 'lab_3.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

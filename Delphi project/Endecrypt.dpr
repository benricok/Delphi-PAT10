program Endecrypt;

uses
  Vcl.Forms,
  PATIT10 in 'PATIT10.pas' {frmEndecrypt},
  HELP in 'HELP.pas' {frmHelp},
  Algorithms in 'Algorithms.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Endecrypt';
  Application.CreateForm(TfrmEndecrypt, frmEndecrypt);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.Run;
end.

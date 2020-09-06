program PAT10_P;

uses
  Vcl.Forms,
  PAT10 in 'PAT10.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

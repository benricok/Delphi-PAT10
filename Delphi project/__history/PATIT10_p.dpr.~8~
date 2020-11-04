program PATIT10_p;

uses
  Vcl.Forms,
  PATIT10 in 'PATIT10.pas' {frmEndecrypt},
  HELP in 'HELP.pas' {frmHelp},
  ABOUT in 'ABOUT.pas' {frmAbout},
  Import in 'Import.pas' {frmImport},
  Export in 'Export.pas' {frmExport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEndecrypt, frmEndecrypt);
  Application.CreateForm(TfrmHelp, frmHelp);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmImport, frmImport);
  Application.CreateForm(TfrmExport, frmExport);
  Application.Run;
end.

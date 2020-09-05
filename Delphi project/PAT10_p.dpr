program PAT10_p;

uses
  Vcl.Forms,
  PAT10 in 'PAT10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

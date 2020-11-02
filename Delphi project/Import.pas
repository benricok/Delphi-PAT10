unit Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.CheckLst, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmImport = class(TForm)
    btnBack: TButton;
    pnlImportToolBAr: TPanel;
    pnlImport: TPanel;
    lblImportHeading: TLabel;
    btnImportCopyClipBoard: TButton;
    btnExportEmail: TButton;
    btnImportFile: TButton;
    memImportedMessage: TMemo;
    lblImportMessage: TLabel;
    btnClose: TBitBtn;
    FileOpenDialog1: TFileOpenDialog;
    procedure btnBackClick(Sender: TObject);
    procedure btnImportCopyClipBoardClick(Sender: TObject);
  public
    Var
      sMessage : string;
  end;

var
  frmImport: TfrmImport;

implementation

{$R *.dfm}

uses PATIT10;

procedure TfrmImport.btnBackClick(Sender: TObject);
begin
  frmEndecrypt.Show;
  self.Destroy;
end;

procedure TfrmImport.btnImportCopyClipBoardClick(Sender: TObject);
begin
  //sMessage :=
end;

end.

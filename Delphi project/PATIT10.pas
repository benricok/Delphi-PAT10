unit PATIT10;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.CheckLst, Math, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, ABOUT, HELP, Import,
  Export, Algorithms;

type
  //Main form class
  TfrmEndecrypt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    tabMessage: TTabSheet;
    tabKey: TTabSheet;
    bitClose: TBitBtn;
    bitHelp: TBitBtn;
    pnlInput: TPanel;
    pnlOutput: TPanel;
    lblMessageHead: TLabel;
    memIn: TMemo;
    btnImport: TButton;
    memOut: TMemo;
    btnExport: TButton;
    lblKeyHEad: TLabel;
    edtKey: TEdit;
    btnKeyGen: TButton;
    clbKeyGenOptions: TCheckListBox;
    sedtGenMin: TSpinEdit;
    sedtGenMax: TSpinEdit;
    lblGenMin: TLabel;
    lblGenMax: TLabel;
    pnlGenerator: TPanel;
    lblGenChar: TLabel;
    btnEncrypt: TButton;
    btnDecrypt: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKeyGenClick(Sender: TObject);
    procedure bitHelpClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  end;

var
  frmEndecrypt: TfrmEndecrypt;
  sKey : String;

implementation

{$R *.dfm}


procedure TfrmEndecrypt.bitHelpClick(Sender: TObject);
begin
  frmEndecrypt.Hide;
  frmHelp.Show;
end;

procedure TfrmEndecrypt.btnExportClick(Sender: TObject);
begin
  frmExport.Show;
  frmEndecrypt.Hide;
end;

procedure TfrmEndecrypt.btnImportClick(Sender: TObject);
begin
  frmImport.Show;
  frmEndecrypt.Hide;
end;

procedure TfrmEndecrypt.btnKeyGenClick(Sender: TObject);
Var
  sKey : string;
begin
  //Generate a new key
  sKey := GenerateKey(sedtGenMin.Value, sedtGenMax.Value, clbKeyGenOptions.Checked[0], clbKeyGenOptions.Checked[1], clbKeyGenOptions.Checked[2], clbKeyGenOptions.Checked[3]);
  edtKey.Text := sKey;
end;

procedure TfrmEndecrypt.FormCreate(Sender: TObject);
Var
  i : integer;

begin
  frmAbout.Show;
  i := 0;
  for i := 0 to 3 do
    begin
      clbKeyGenOptions.Checked[i] := true;
    end;

  //Generate a new key
  sKey := GenerateKey(sedtGenMin.Value, sedtGenMax.Value, clbKeyGenOptions.Checked[0], clbKeyGenOptions.Checked[1], clbKeyGenOptions.Checked[2], clbKeyGenOptions.Checked[3]);
  edtKey.Text := sKey;
end;

end.


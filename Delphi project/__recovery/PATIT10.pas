unit PATIT10;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.CheckLst, Math, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, ABOUT, HELP, Import, Export;

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
    function  GenerateKey(iMin, iMax : integer; bUpChar, bLowChar, bNumbers, bSpecial : boolean) : String;
    function  Encrypt(sMessage, sKey : string) : string;
    function  Decrypt(sMessage, sKey : string) : string;
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

function TfrmEndecrypt.Encrypt(sMessage, sKey : string) : string;
Var
  i : integer;
begin

end;

function TfrmEndecrypt.Decrypt(sMessage, sKey : string) : string;
Var
  i : integer;
begin

end;

function TfrmEndecrypt.GenerateKey(iMin, iMax : integer; bUpChar, bLowChar, bNumbers, bSpecial : boolean) : String;
Var
  iLengthKey, iLengthGenAvalible, i : integer;
  sGenKey, sGenAvalible : String;

Const
  sGenUpChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  sGenLowChar = 'abcdefghijklmnopqrstuvwxyz';
  sGenNumbers = '0123456789';
  sGenSpecialChar = '!@#$%^&*';

begin
  //Check if Min value is smaller than Max value
  if iMin >= iMax then
    MessageDlg('Please enter the minimum and maximum values in correctly',mtError, mbOKCancel, 0)
  else
    begin
      //Initilize for loop counter and key string
      i := 1;
      skey := '';

      //Radomise length of key
      Randomize;
      iLengthKey := RandomRange(iMin, iMax +1);

      //Append Selected characters to string avalible to the randomizer to select from and get length of it
      if bUpChar then
        sGenAvalible:= sGenAvalible + sGenUpChar;
      if bLowChar then
        sGenAvalible:= sGenAvalible + sGenLowChar;
      if bNumbers then
        sGenAvalible:= sGenAvalible + sGenNumbers;
      if bSpecial then
        sGenAvalible:= sGenAvalible + sGenSpecialChar;

      iLengthGenAvalible := length(sGenAvalible);

      //Check if user selected characters
      if iLengthGenAvalible = 0 then
        MessageDlg('Please select characters for the gererator to use',mtError, mbOKCancel, 0);

      //Generate Key
      for i := 1 to iLengthKey do
        begin
          sGenKey := sGenKey + sGenAvalible[Randomrange(1, iLengthGenAvalible+1)];
        end;

      //Return Key
      result := sGenKey;
    end;
end;

end.

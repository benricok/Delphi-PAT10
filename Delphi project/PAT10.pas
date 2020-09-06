unit PAT10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Math, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmMain = class(TForm)
    tclMain: TTabControl;
    Panel1: TPanel;
    memIn: TMemo;
    memOut: TMemo;
    btnImport: TButton;
    Label1: TLabel;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    bitBtnClose: TBitBtn;
    btnExport: TButton;
    bitBtnHelp: TBitBtn;
    procedure btnImportClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    var
      sFilename : string;
  public
    var
      sExported : string;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnExportClick(Sender: TObject);
  begin
    if memOut.Text = '' then
      ShowMessage('There is no content to export')
    else
      sExported := memOut.Text;

  end;

procedure TfrmMain.btnImportClick(Sender: TObject);
  begin
    if NOT (memIn.Text = '') then
      begin

        if MessageDlg('Are you sure you want to clear the contents?',mtCustom,[mbYes,mbNo], 0) = mrYes then
          begin
            memIn.Clear;
            sFileName := selectFile();
          end;
    end;
  end;

function selectFile() : string;
  var
    openDialog : TOpenDialog;    // Open dialog variable
  begin
    // Create the open dialog object - assign to our open dialog variable
    openDialog := TOpenDialog.Create(nil);

    // Set up the starting directory to be the current one
    openDialog.InitialDir := GetCurrentDir;

    // Only allow existing files to be selected
    openDialog.Options := [ofFileMustExist];

    // Allow only .dpr and .pas files to be selected
    //openDialog.Filter :=
    //  'Delphi project files|*.dpr|Delphi pascal files|*.pas';

    // Select pascal files as the starting filter type
    openDialog.FilterIndex := 2;

    // Display the open file dialog
    if openDialog.Execute then
      result := openDialog.FileName;

    // Free up the dialog
    openDialog.Free;
  end;


procedure TfrmMain.FormCreate(Sender: TObject);
  begin
    memOut.Clear;
    memIn.Clear;
  end;

function returnFile(const filename : TFileName): string;
  begin
    if(FileExists(filename)) then

  end;

end.

//Benrico Krog

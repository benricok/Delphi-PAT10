object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EnDecryptor'
  ClientHeight = 645
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tclMain: TTabControl
    Left = 0
    Top = 0
    Width = 800
    Height = 608
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Tab 1'
      'Tab 2')
    TabIndex = 0
    ExplicitWidth = 699
    ExplicitHeight = 460
    object Label1: TLabel
      Left = 384
      Top = 43
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 165
      Top = 69
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 592
      Top = 69
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object memIn: TMemo
      Left = 37
      Top = 88
      Width = 340
      Height = 345
      Lines.Strings = (
        'memIn')
      TabOrder = 0
    end
    object memOut: TMemo
      Left = 440
      Top = 88
      Width = 313
      Height = 345
      Lines.Strings = (
        'memOut')
      TabOrder = 1
    end
    object btnImport: TButton
      Left = 37
      Top = 456
      Width = 75
      Height = 25
      Hint = 'Decrypt your message'
      Caption = 'Import'
      TabOrder = 2
      OnClick = btnImportClick
    end
    object Button4: TButton
      Left = 424
      Top = 487
      Width = 75
      Height = 25
      Hint = 'Encrypt your message'
      Caption = 'Button4'
      TabOrder = 3
    end
    object btnExport: TButton
      Left = 440
      Top = 456
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 4
      OnClick = btnExportClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 608
    Width = 800
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 419
    ExplicitWidth = 699
    object bitBtnClose: TBitBtn
      Left = 712
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object bitBtnHelp: TBitBtn
      Left = 623
      Top = 6
      Width = 75
      Height = 25
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end

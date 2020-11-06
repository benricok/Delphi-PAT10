object frmEndecrypt: TfrmEndecrypt
  Left = 195
  Top = 108
  BorderStyle = bsSingle
  Caption = 'Endecrypt'
  ClientHeight = 597
  ClientWidth = 584
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 563
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    ExplicitHeight = 496
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 574
      Height = 553
      ActivePage = tabKey
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 486
      object tabMessage: TTabSheet
        Caption = 'Message'
        ExplicitLeft = 0
        ExplicitTop = 27
        ExplicitHeight = 545
        object lblMessageHead: TLabel
          Left = 136
          Top = 12
          Width = 304
          Height = 22
          Caption = 'Message Encryption and Decryption'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object pnlInput: TPanel
          Left = 10
          Top = 40
          Width = 262
          Height = 359
          TabOrder = 0
          object lblInput: TLabel
            Left = 8
            Top = 10
            Width = 28
            Height = 16
            Caption = 'Input'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object memIn: TMemo
            Left = 8
            Top = 32
            Width = 241
            Height = 282
            Lines.Strings = (
              '')
            TabOrder = 0
          end
          object btnImport: TButton
            Left = 64
            Top = 328
            Width = 121
            Height = 25
            Caption = 'Import from file'
            TabOrder = 1
            OnClick = btnImportClick
          end
        end
        object pnlOutput: TPanel
          Left = 291
          Top = 40
          Width = 262
          Height = 359
          TabOrder = 1
          object lblOutput: TLabel
            Left = 8
            Top = 10
            Width = 35
            Height = 16
            Caption = 'Ouput'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object memOut: TMemo
            Left = 8
            Top = 32
            Width = 241
            Height = 290
            TabOrder = 0
          end
          object btnExport: TButton
            Left = 64
            Top = 328
            Width = 121
            Height = 25
            Caption = 'Export to file'
            TabOrder = 1
            OnClick = btnExportClick
          end
        end
        object pnlSub: TPanel
          Left = 18
          Top = 421
          Width = 241
          Height = 92
          TabOrder = 2
          object lblHeadingSmall2: TLabel
            Left = 10
            Top = 23
            Width = 93
            Height = 16
            Caption = 'in the input box:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblHeadingsmall: TLabel
            Left = 10
            Top = 9
            Width = 195
            Height = 16
            Caption = 'Encrypt or Decrypt your message'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object btnDecrypt: TButton
            Left = 120
            Top = 53
            Width = 75
            Height = 25
            Caption = 'Decrypt'
            TabOrder = 0
            OnClick = btnDecryptClick
          end
          object btnEncrypt: TButton
            Left = 34
            Top = 53
            Width = 75
            Height = 25
            Caption = 'Encrypt'
            TabOrder = 1
            OnClick = btnEncryptClick
          end
        end
      end
      object tabKey: TTabSheet
        Caption = 'Key'
        ExplicitHeight = 458
        object lblKeyHEad: TLabel
          Left = 160
          Top = 39
          Width = 233
          Height = 22
          Caption = 'Enter a key or generate one'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object pnlGenerator: TPanel
          Left = 34
          Top = 118
          Width = 495
          Height = 243
          TabOrder = 0
          object lblGenMin: TLabel
            Left = 34
            Top = 45
            Width = 106
            Height = 13
            Caption = 'Minimum length of key'
          end
          object lblGenMax: TLabel
            Left = 34
            Top = 112
            Width = 110
            Height = 13
            Caption = 'Maximum length of key'
          end
          object lblGenChar: TLabel
            Left = 222
            Top = 45
            Width = 126
            Height = 13
            Caption = 'Characters included in key'
          end
          object clbKeyGenOptions: TCheckListBox
            Left = 222
            Top = 64
            Width = 255
            Height = 99
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 18
            Items.Strings = (
              'A-Z'
              'a-z'
              '0-9'
              '!@#$%^&*')
            ParentFont = False
            TabOrder = 0
          end
          object sedtGenMin: TSpinEdit
            Left = 34
            Top = 62
            Width = 121
            Height = 22
            MaxValue = 64
            MinValue = 4
            TabOrder = 1
            Value = 16
          end
          object sedtGenMax: TSpinEdit
            Left = 34
            Top = 131
            Width = 121
            Height = 22
            MaxValue = 64
            MinValue = 4
            TabOrder = 2
            Value = 24
          end
          object btnKeyGen: TButton
            Left = 192
            Top = 199
            Width = 75
            Height = 25
            Caption = 'Generate'
            TabOrder = 3
            OnClick = btnKeyGenClick
          end
        end
        object edtKey: TEdit
          Left = 82
          Top = 75
          Width = 381
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 563
    Width = 584
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    ExplicitTop = 496
    object bitClose: TBitBtn
      Left = 487
      Top = 1
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object bitHelp: TBitBtn
      Left = 397
      Top = 1
      Width = 75
      Height = 25
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 1
      OnClick = bitHelpClick
    end
  end
end

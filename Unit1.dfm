object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'test_mht'
  ClientHeight = 694
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object WebBrowser1: TWebBrowser
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 671
    Height = 638
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 43
    ExplicitTop = 94
    ExplicitHeight = 653
    ControlData = {
      4C0000005A450000F04100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 32
      Width = 671
      Height = 15
      Align = alBottom
      Caption = 'Path:'
      ExplicitWidth = 27
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 599
      Top = 3
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Halt'
      TabOrder = 0
      OnClick = Button2Click
      ExplicitLeft = 595
      ExplicitHeight = 29
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Save mht'
      TabOrder = 1
      OnClick = Button1Click
      ExplicitHeight = 29
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 145
      Height = 23
      Align = alLeft
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        'OLECMDID_SAVEAS'
        'OLECMDID_SAVE')
    end
    object ComboBox2: TComboBox
      AlignWithMargins = True
      Left = 235
      Top = 3
      Width = 238
      Height = 23
      Align = alLeft
      Style = csDropDownList
      TabOrder = 3
      Items.Strings = (
        'OLECMDEXECOPT_DONTPROMPTUSER'
        'OLECMDEXECOPT_PROMPTUSER'
        'OLECMDEXECOPT_DODEFAULT')
    end
  end
end

object Form1: TForm1
  Left = 217
  Top = 133
  Caption = 'Laba3'
  ClientHeight = 368
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 36
    Height = 24
    Caption = 'Np='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 58
    Top = 42
    Width = 104
    Height = 13
    Caption = #1059#1090#1074#1086#1088#1102#1102#1095#1072' '#1084#1072#1090#1088#1080#1094#1103
  end
  object Label5: TLabel
    Left = 266
    Top = 42
    Width = 52
    Height = 13
    Caption = #1050#1086#1084#1073#1110#1085#1072#1094#1110#1111
  end
  object Label7: TLabel
    Left = 20
    Top = 250
    Width = 3
    Height = 13
    Transparent = True
  end
  object Label9: TLabel
    Left = 20
    Top = 285
    Width = 3
    Height = 13
    Transparent = True
  end
  object Label8: TLabel
    Left = 20
    Top = 270
    Width = 3
    Height = 13
    Transparent = True
  end
  object TLabel
    Left = 416
    Top = 42
    Width = 98
    Height = 13
    Caption = #1042#1077#1082#1090#1086#1088#1080' '#1087#1086#1084#1080#1083#1086#1082' '#1077
  end
  object Label2: TLabel
    Left = 568
    Top = 42
    Width = 79
    Height = 13
    Caption = #1050#1086#1076#1080'-'#1089#1091#1087#1091#1090#1085#1080#1082#1080
  end
  object Edit1: TEdit
    Left = 58
    Top = 8
    Width = 122
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
    OnChange = Edit1Change
  end
  object StringGrid1: TStringGrid
    AlignWithMargins = True
    Left = 10
    Top = 61
    Width = 200
    Height = 120
    DefaultColWidth = 12
    DefaultRowHeight = 15
    FixedCols = 0
    FixedRows = 0
    TabOrder = 1
  end
  object StringGrid2: TStringGrid
    Left = 216
    Top = 61
    Width = 161
    Height = 285
    DefaultColWidth = 12
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
  end
  object StringGrid3: TStringGrid
    Left = 779
    Top = 61
    Width = 209
    Height = 257
    DefaultColWidth = 40
    DefaultRowHeight = 15
    TabOrder = 3
    Visible = False
    RowHeights = (
      15
      15
      15
      15
      14)
  end
  object StringGrid4: TStringGrid
    Left = 831
    Top = 42
    Width = 242
    Height = 181
    DefaultColWidth = 40
    DefaultRowHeight = 15
    TabOrder = 4
    Visible = False
  end
  object StringGrid5: TStringGrid
    Left = 842
    Top = 250
    Width = 239
    Height = 181
    DefaultColWidth = 40
    DefaultRowHeight = 15
    TabOrder = 5
    Visible = False
  end
  object Button1: TButton
    Left = 198
    Top = 6
    Width = 76
    Height = 26
    Caption = 'Go'
    TabOrder = 6
    OnClick = Button1Click
  end
  object StringGrid6: TStringGrid
    Left = 400
    Top = 61
    Width = 121
    Height = 285
    DefaultColWidth = 12
    DefaultRowHeight = 15
    FixedCols = 0
    FixedRows = 0
    TabOrder = 7
  end
  object StringGrid7: TStringGrid
    Left = 535
    Top = 61
    Width = 162
    Height = 285
    DefaultColWidth = 15
    DefaultRowHeight = 12
    FixedCols = 0
    FixedRows = 0
    TabOrder = 8
  end
end

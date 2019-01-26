object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Stringlist'
  ClientHeight = 555
  ClientWidth = 632
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
  object bvlHead: TBevel
    Left = 8
    Top = 170
    Width = 616
    Height = 3
  end
  object bvlFeet: TBevel
    Left = 314
    Top = 16
    Width = 3
    Height = 153
  end
  object StringGrid: TStringGrid
    Left = 72
    Top = 184
    Width = 433
    Height = 225
    DefaultColWidth = 85
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      85
      85
      85
      85
      85)
    RowHeights = (
      24
      24)
  end
  object KorPanel: TPanel
    Left = 168
    Top = 407
    Width = 81
    Height = 41
    TabOrder = 1
  end
  object EngPanel: TPanel
    Left = 249
    Top = 407
    Width = 81
    Height = 41
    TabOrder = 2
  end
  object MathPanel: TPanel
    Left = 330
    Top = 407
    Width = 87
    Height = 41
    TabOrder = 3
  end
  object TotalPanel: TPanel
    Left = 417
    Top = 407
    Width = 88
    Height = 41
    TabOrder = 4
  end
  object GrBoxNote: TGroupBox
    Left = 8
    Top = 16
    Width = 249
    Height = 145
    Caption = 'Data'
    TabOrder = 5
    object StaticText1: TStaticText
      Left = 32
      Top = 23
      Width = 42
      Height = 17
      Caption = 'Student'
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 32
      Top = 50
      Width = 33
      Height = 17
      Caption = 'Note1'
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 32
      Top = 81
      Width = 33
      Height = 17
      Caption = 'Note2'
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 32
      Top = 108
      Width = 33
      Height = 17
      Caption = 'Note3'
      TabOrder = 3
    end
    object EngEdit: TEdit
      Left = 96
      Top = 77
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object KorEdit: TEdit
      Left = 96
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object MathEdit: TEdit
      Left = 96
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object NameEdit: TEdit
      Left = 96
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
  object GrBoxControle: TGroupBox
    Left = 375
    Top = 19
    Width = 249
    Height = 145
    Caption = 'Controle'
    TabOrder = 6
    object AddButton: TButton
      Left = 19
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = AddButtonClick
    end
    object DelButton: TButton
      Left = 155
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
      OnClick = DelButtonClick
    end
  end
end

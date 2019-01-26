object MainForm: TMainForm
  Left = 0
  Top = 0
  CustomHint = BalloonHint
  Caption = 'StudNote'
  ClientHeight = 555
  ClientWidth = 632
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object bvlHead: TBevel
    Left = 0
    Top = 226
    Width = 632
    Height = 3
    CustomHint = BalloonHint
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 229
  end
  object bvlFeet: TBevel
    Left = 442
    Top = 235
    Width = 3
    Height = 284
    CustomHint = BalloonHint
  end
  object StringGrid: TStringGrid
    Left = 3
    Top = 235
    Width = 433
    Height = 242
    ParentCustomHint = False
    DefaultColWidth = 85
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnDrawCell = StringGridDrawCell
    OnMouseMove = StringGridMouseMove
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
    Left = 99
    Top = 477
    Width = 81
    Height = 41
    CustomHint = BalloonHint
    TabOrder = 1
  end
  object EngPanel: TPanel
    Left = 180
    Top = 477
    Width = 81
    Height = 41
    CustomHint = BalloonHint
    TabOrder = 2
  end
  object MathPanel: TPanel
    Left = 261
    Top = 477
    Width = 87
    Height = 41
    CustomHint = BalloonHint
    TabOrder = 3
  end
  object TotalPanel: TPanel
    Left = 348
    Top = 477
    Width = 88
    Height = 41
    CustomHint = BalloonHint
    TabOrder = 4
  end
  object GrBoxNote: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 626
    Height = 161
    CustomHint = BalloonHint
    Align = alTop
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 632
    object StaticText1: TStaticText
      Left = 32
      Top = 23
      Width = 49
      Height = 17
      CustomHint = BalloonHint
      Caption = 'Student'
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 32
      Top = 50
      Width = 37
      Height = 17
      CustomHint = BalloonHint
      Caption = 'Note1'
      TabOrder = 5
    end
    object StaticText3: TStaticText
      Left = 32
      Top = 81
      Width = 37
      Height = 17
      CustomHint = BalloonHint
      Caption = 'Note2'
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 32
      Top = 108
      Width = 37
      Height = 17
      CustomHint = BalloonHint
      Caption = 'Note3'
      TabOrder = 7
    end
    object EngEdit: TEdit
      Left = 96
      Top = 77
      Width = 121
      Height = 21
      Hint = 'English'
      CustomHint = BalloonHint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object FreEdit: TEdit
      Left = 96
      Top = 48
      Width = 121
      Height = 21
      Hint = 'French'
      CustomHint = BalloonHint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object MathEdit: TEdit
      Left = 96
      Top = 104
      Width = 121
      Height = 21
      Hint = 'Math'
      CustomHint = BalloonHint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object NameEdit: TEdit
      Left = 96
      Top = 21
      Width = 121
      Height = 21
      Hint = 'Name'
      CustomHint = BalloonHint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object GrBoxControle: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 170
    Width = 626
    Height = 53
    CustomHint = BalloonHint
    Align = alTop
    Caption = 'Controle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    ExplicitLeft = 0
    ExplicitTop = 164
    ExplicitWidth = 632
    object AddButton: TBitBtn
      Left = 30
      Top = 19
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Add'
      CustomHint = BalloonHint
      Caption = 'Add'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        000000000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentDoubleBuffered = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = AddButtonClick
    end
    object DelButton: TBitBtn
      Left = 111
      Top = 18
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Delete'
      CustomHint = BalloonHint
      Caption = 'Delete'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000131C
        3C471E2B5F700000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
        D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
        D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
        65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
        D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
        000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
        D8FF22316B7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
        D8FF1F2D62740000000000000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
        D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
        65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
        D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
        D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
        414D212F677A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000002130687B151E414D00000000}
      ParentDoubleBuffered = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = DelButtonClick
    end
  end
  object MainMenu: TMainMenu
    Left = 504
    Top = 456
    object N1: TMenuItem
      Caption = '&File'
      ShortCut = 16454
      object N2: TMenuItem
        Caption = '&Exit'
        ShortCut = 16453
        OnClick = N2Click
      end
    end
    object A1: TMenuItem
      Caption = '&About'
      ShortCut = 16449
      object I1: TMenuItem
        Caption = '&Information'
        ShortCut = 16457
        OnClick = I1Click
      end
    end
  end
  object BalloonHint: TBalloonHint
    Left = 560
    Top = 456
  end
end

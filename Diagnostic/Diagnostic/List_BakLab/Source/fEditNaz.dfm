object frmEditNaz: TfrmEditNaz
  Left = 446
  Top = 81
  BorderStyle = bsDialog
  Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1082#1072#1073#1080#1085#1077#1090', '#1076#1072#1090#1091', '#1074#1088#1077#1084#1103
  ClientHeight = 456
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 433
    Height = 28
    Align = dalTop
    BarManager = BM
    SunkenBorder = True
    UseOwnSunkenBorder = True
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 433
    Height = 123
    Margins.Top = 0
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object cxteTime: TcxTimeEdit
      Left = 74
      Top = 85
      EditValue = 0.000000000000000000
      Properties.TimeFormat = tfHourMin
      Style.LookAndFeel.SkinName = 'Office2007Green'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
      StyleHot.LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 0
      Width = 69
    end
    object cxlcKabinet: TcxLookupComboBox
      Left = 74
      Top = 14
      Hint = #1043#1088#1091#1087#1087#1099' '#1076#1080#1072#1075#1085#1086#1079#1086#1074
      Properties.AutoSelect = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.HideSelection = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'FK_ID'
      Properties.ListColumns = <
        item
          FieldName = 'FC_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsKabinet
      Properties.ReadOnly = False
      Properties.OnChange = cxlcKabinetPropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Green'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
      StyleHot.LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 1
      Width = 182
    end
    object Panel3: TPanel
      Left = 74
      Top = 41
      Width = 351
      Height = 38
      AutoSize = True
      BevelInner = bvLowered
      TabOrder = 2
      object p1: TPanel
        Left = 52
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 0
        OnClick = p1Click
      end
      object p2: TPanel
        Left = 69
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 1
        OnClick = p2Click
      end
      object p3: TPanel
        Left = 86
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 2
        OnClick = p3Click
      end
      object p4: TPanel
        Left = 103
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 3
        OnClick = p4Click
      end
      object p5: TPanel
        Left = 120
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 4
        OnClick = p5Click
      end
      object p6: TPanel
        Left = 137
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 5
        OnClick = p6Click
      end
      object p7: TPanel
        Left = 154
        Top = 19
        Width = 17
        Height = 17
        BevelInner = bvLowered
        TabOrder = 6
        OnClick = p7Click
      end
      object blWeeks: TButton
        Left = 27
        Top = 19
        Width = 25
        Height = 17
        Hint = #1053#1072' '#1076#1077#1085#1100' '#1085#1072#1079#1072#1076
        Caption = '<'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = blWeeksClick
      end
      object blMon: TButton
        Left = 2
        Top = 19
        Width = 25
        Height = 17
        Hint = #1053#1072' '#1084#1077#1089#1103#1094' '#1085#1072#1079#1072#1076
        Caption = '<<'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = blMonClick
      end
      object brWeeks: TButton
        Left = 172
        Top = 19
        Width = 25
        Height = 17
        Hint = #1053#1072' '#1076#1077#1085#1100' '#1074#1087#1077#1088#1105#1076
        Caption = '>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = brWeeksClick
      end
      object brMon: TButton
        Left = 197
        Top = 19
        Width = 25
        Height = 17
        Hint = #1053#1072' '#1084#1077#1089#1103#1094' '#1074#1087#1077#1088#1105#1076
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = brMonClick
      end
      object pMonth: TPanel
        Left = 2
        Top = 2
        Width = 220
        Height = 17
        BevelInner = bvLowered
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 11
      end
      object cxdeDate: TcxDateEdit
        Left = 228
        Top = 9
        Properties.DateButtons = [btnToday]
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = cxdeDatePropertiesChange
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 12
        Width = 121
      end
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 45
      Caption = #1044#1072#1090#1072':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 83
      Caption = #1042#1088#1077#1084#1103':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 13
      Caption = #1050#1072#1073#1080#1085#1077#1090':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 160
    Width = 439
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 433
      Height = 293
      Margins.Top = 0
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object TVTIME: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsTime
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object VTIMENAZ: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103
          DataBinding.FieldName = 'TIMENAZ'
          Options.Editing = False
          VisibleForCustomization = False
          Width = 60
        end
        object VFIO: TcxGridDBColumn
          Caption = #1060#1048#1054
          DataBinding.FieldName = 'FIOPAC'
          VisibleForCustomization = False
          Width = 114
        end
        object VNAMEISSL: TcxGridDBColumn
          Caption = #1052#1077#1090#1086#1076#1080#1082#1072
          DataBinding.FieldName = 'FC_NAME'
          Width = 258
        end
        object VTIMEISSL: TcxGridDBColumn
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100'('#1084#1080#1085'.)'
          DataBinding.FieldName = 'TIMEISL'
          Options.Editing = False
          Width = 79
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = TVTIME
      end
    end
  end
  object BM: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = IL
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 128
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
    object BMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'OKCancel'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 344
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbOK'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbCancel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'OKCancel'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bbOK: TdxBarButton
      Action = aOK
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object bbCancel: TdxBarButton
      Action = aCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object odsKabinet: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT KK.FK_KABSOOTVETID AS FK_ID,'
      '                S.FC_NAME AS FC_NAME'
      
        '  FROM TNAZVRACH NAZ, TKABINET KAB, TKABSOOTVETKAB KK, TKABSOOTV' +
        'ET S'
      ' WHERE FK_SOTRID = :PSOTR'
      '   AND NAZ.FK_KABINETID = KAB.FK_ID'
      '   AND KK.FK_KABINETID = KAB.FK_ID'
      '   AND S.FK_ID = KK.FK_KABSOOTVETID'
      '   and naz.fk_smid = nvl(:Psmid,naz.fk_smid)'
      ' ORDER BY FC_NAME'
      ''
      '/*SELECT DISTINCT KAB.FK_ID, KAB.FC_NAME, KAB.FN_ORDER '
      '  FROM TNAZVRACH NAZ, TKABINET KAB'
      'WHERE FK_SOTRID = :PSOTR'
      '  AND NAZ.FK_KABINETID = KAB.FK_ID'
      'ORDER BY KAB.FN_ORDER */')
    Optimize = False
    Variables.Data = {
      0300000002000000060000003A50534F54520300000000000000000000000600
      00003A50534D4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000464B5F49440100000000000700000046435F4E41
      4D45010000000000}
    Cursor = crSQLWait
    Session = frmMain.os
    BeforeOpen = odsKabinetBeforeOpen
    Left = 24
    Top = 178
  end
  object dsKabinet: TDataSource
    DataSet = odsKabinet
    Left = 24
    Top = 226
  end
  object IL: TImageList
    Left = 88
    Top = 226
    Bitmap = {
      494C010102000400180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000043E9000043E9000043E9000043E9000043E9000043E90000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000034B
      B400034BB4000C5DCF004586CF006392C7005E8CBF003D73B40008479F00003A
      9900043E90000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000034BB400045B
      DE0077B1F000F6F4F600D9E6F000B7D3F000B5D0EE00CFDAE600DED9D5005580
      B0000141A400043E900000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000034BB400045BDE009ECA
      F800FEFEFF00599EEF001069E500025CE200025CE2001069E5005CA0EF00F8F4
      EF00809EBC000141A400043E9000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000034BB4007AB5F600FEFE
      FF00287BE700025CE2000055E000025CE2000055E000025CE2000055E0003688
      ED00F8FAF6005E8CBF00043E9000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE001169DE00FEFEFF00599E
      EF00025CE200E9F3FD0088BCF3000055E000025CE200C4DDF900C4DDF900025C
      E20064A6F200EEEAE700094FAF00043E90000000000000000000000000000000
      0000008000000080000000800000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE005DA5F200E6F2FD001674
      E7000565E500C4DDF900FEFEFF0088BCF300C4DDF900FEFEFF0088BCF3000055
      E0000D67E200E3EEF7004787D100043E90000000000000000000000000000080
      0000008000000080000000800000000000000000000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE0088BCF300C6E1FA001176
      EA00096DE9001176EA00C9E2FB00FEFEFF00FEFEFF0088BCF300025CE2000055
      E000025CE200C4DDF90070A9E600043E90000000000000000000008000000080
      0000008000000080000000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE0089C4F700C9E2FB001A82
      EE00117AED001A82EE00C9E2FB00FEFEFF00FEFEFF0088BCF3000055E000025C
      E2000055E000C4DDF9007AB5F600043E90000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE0076BDF900E9F3FD003599
      F3001E89F000C9E2FB00FEFEFF0096C7F700C6E1FA00FEFEFF0088BCF300004F
      E0001069E500E9F3FD00529EF400043E90000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F6ADE003599F300FEFEFF007FC5
      FA002996F400EFF8FF009ECAF800117AED00117AED00C9E2FB00C4DDF900004F
      E00066A7EF00FEFEFF000D67E200043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F6ADE00A5DDFD00FEFE
      FF005AB6F8002A99F4001E89F0001A82EE000B70E9000768E700025CE2003688
      ED00FEFEFF0070AFF400034BB400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F6ADE0041AFFC00C5ED
      FF00FEFEFF0081C7FA003599F3001E89F000117AED001878E9005CA0EF00FEFE
      FF009ECAF800045BDE00034BB400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F6ADE0045B4
      FE00A5DDFD00FEFEFF00E9F3FD00C9E2FB00C9E2FB00E6F2FD00FEFEFF0070AF
      F400045BDE00034BB40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F6A
      DE001169DE003AA0F60076BDF9008EC7F80087C0F6005DA5F2000F6AE000034B
      B400034BB4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F6ADE000F6ADE000F6ADE000F6ADE000F6ADE000F6ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F81FFFFF00000000E007FF7F00000000
      C003FE3F000000008001FC3F000000008001F81F000000000000F09F00000000
      0000E18F000000000000C3CF000000000000C7C7000000000000CFE700000000
      0000FFE3000000008001FFF3000000008001FFF100000000C003FFF900000000
      E007FFF900000000F81FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object al: TActionList
    Images = IL
    Left = 88
    Top = 178
    object aOK: TAction
      Caption = 'Ok'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 1
      ShortCut = 113
      OnExecute = aOKExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      ImageIndex = 0
      ShortCut = 27
      OnExecute = aCancelExecute
    end
  end
  object dsTime: TDataSource
    DataSet = odsTime
    Left = 184
    Top = 265
  end
  object odsTime: TOracleDataSet
    SQL.Strings = (
      'SELECT TO_CHAR(FD_RUN, '#39'HH24:MI'#39') AS TIMENAZ,'
      
        '       (SELECT FC_TIME FROM TSMID WHERE FK_ID = ISL.FK_SMID) AS ' +
        'TIMEISL,'
      '       PKG_REGIST_PACFUNC.GET_PAC_FIO(FK_PACID) FIOPAC,'
      '       GET_NAME_RGISSL(ISL.FK_SMID) AS FC_NAME '
      ''
      '  FROM TNAZIS ISL'
      ' WHERE (FK_ROOMID IN (SELECT E.FK_KABINETID '
      '                       FROM ASU.TKABSOOTVETKAB E, TNAZVRACH NAZ'
      '                      WHERE E.FK_KABSOOTVETID = :PFK_ROOMID'
      
        '                        AND E.FK_KABINETID = NAZ.FK_KABINETID) O' +
        'R FK_ROOMID = :PFK_ROOMID)'
      '   AND FD_RUN >= :PFD_DATE AND FD_RUN < TO_DATE(:PFD_DATE)+1'
      '   AND FK_NAZSOSID <> GET_NAZCANCEL'
      'ORDER BY TIMENAZ'
      ''
      '/*SELECT TO_CHAR(FD_RUN, '#39'HH24:MI'#39') AS TIMENAZ,'
      
        '       (SELECT FC_TIME FROM TSMID WHERE FK_ID = ISL.FK_SMID) AS ' +
        'TIMEISL,'
      '       PKG_REGIST_PACFUNC.GET_PAC_FIO(FK_PACID) FIOPAC,'
      '       GET_NAME_RGISSL(ISL.FK_SMID) AS FC_NAME '
      ''
      '  FROM TNAZIS ISL'
      ' WHERE FK_ROOMID = :PFK_ROOMID'
      '   AND FD_RUN >= :PFD_DATE AND FD_RUN < TO_DATE(:PFD_DATE)+1'
      '   AND FK_NAZSOSID <> GET_NAZCANCEL'
      'ORDER BY TIMENAZ*/'
      '')
    Optimize = False
    Variables.Data = {
      03000000020000000B0000003A50464B5F524F4F4D4944030000000000000000
      000000090000003A5046445F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000040000000700000054494D4549534C0100000000000700000054494D
      454E415A0100000000000600000046494F504143010000000000070000004643
      5F4E414D45010000000000}
    Cursor = crSQLWait
    Session = frmMain.os
    Left = 184
    Top = 312
  end
  object odsLimits: TOracleDataSet
    SQL.Strings = (
      
        'select fc_value from asu.tsmini where fc_section = '#39'LIMIT_RASPRE' +
        'D_IN_DAY'#39' and fc_key in '
      
        '(select to_char(fk_id) from asu.tsmid connect by prior fk_owner ' +
        '= fk_id start with fk_id = :psmid)')
    Optimize = False
    Variables.Data = {0300000001000000060000003A50534D4944030000000000000000000000}
    Session = frmMain.os
    Left = 88
    Top = 288
  end
  object odsGetLimit: TOracleDataSet
    SQL.Strings = (
      'SELECT COUNT(1) cnt'
      '  FROM TNAZIS ISL'
      ' WHERE (FK_ROOMID IN'
      '       (SELECT E.FK_KABINETID'
      '           FROM ASU.TKABSOOTVETKAB E, TNAZVRACH NAZ'
      '          WHERE E.FK_KABSOOTVETID = :PFK_ROOMID'
      '            AND E.FK_KABINETID = NAZ.FK_KABINETID) OR'
      '       FK_ROOMID = :PFK_ROOMID)'
      '   AND FD_RUN >= :PFD_DATE'
      '   AND FD_RUN < TO_DATE(:PFD_DATE) + 1'
      '   AND FK_NAZSOSID <> GET_NAZCANCEL'
      '   AND ISL.FK_SMID = :PSMID'
      
        '   AND isl.fk_naztypeid NOT IN (SELECT fk_id FROM asu.tsmid WHER' +
        'E fc_synonim = '#39'NAZTYPE_URGENTLY'#39')')
    Optimize = False
    Variables.Data = {
      03000000030000000B0000003A50464B5F524F4F4D4944030000000000000000
      000000090000003A5046445F444154450C000000000000000000000006000000
      3A50534D4944030000000000000000000000}
    Session = frmMain.os
    Left = 88
    Top = 336
  end
  object odsNazInfo: TOracleDataSet
    SQL.Strings = (
      'SELECT ('
      
        'SELECT COUNT(1) FROM asu.tnazis i WHERE i.fk_naztypeid IN (SELEC' +
        'T fk_id FROM asu.tsmid WHERE fc_synonim = '#39'NAZTYPE_URGENTLY'#39')'
      'AND i.fk_id = :pnazid) is_extrenno,'
      
        '(SELECT COUNT(1) FROM login.tsotr s WHERE fk_id = :psotrid AND s' +
        '.fk_spravid = asu.get_vrach_endo) is_endo,'
      'asu.is_ambulance(:ppacid) is_stac'
      'FROM dual')
    Optimize = False
    Variables.Data = {
      0300000003000000070000003A504E415A494403000000000000000000000008
      0000003A50534F54524944030000000000000000000000070000003A50504143
      4944030000000000000000000000}
    Session = frmMain.os
    Left = 88
    Top = 384
  end
end

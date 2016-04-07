object frmEditNaz: TfrmEditNaz
  Left = 472
  Top = 229
  Width = 247
  Height = 483
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 239
    Height = 26
    Align = dalTop
    BarManager = BM
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 239
    Height = 103
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 45
      Height = 13
      Caption = #1050#1072#1073#1080#1085#1077#1090':'
    end
    object Label2: TLabel
      Left = 34
      Top = 74
      Width = 36
      Height = 13
      Caption = #1042#1088#1077#1084#1103':'
    end
    object Label3: TLabel
      Left = 40
      Top = 48
      Width = 29
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object cxteTime: TcxTimeEdit
      Left = 76
      Top = 71
      EditValue = 0.000000000000000000
      Properties.TimeFormat = tfHourMin
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
      TabOrder = 1
      Width = 151
    end
    object cxdeDate: TcxDateEdit
      Left = 75
      Top = 43
      Properties.OnChange = cxdeDatePropertiesChange
      TabOrder = 2
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 239
    Height = 327
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 6
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 235
      Height = 323
      Align = alClient
      TabOrder = 0
      object TVTIME: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsTime
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object VTIMENAZ: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103
          DataBinding.FieldName = 'TIMENAZ'
          Options.Editing = False
        end
        object VTIMEISSL: TcxGridDBColumn
          Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100'('#1084#1080#1085'.)'
          DataBinding.FieldName = 'TIMEISL'
          Options.Editing = False
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
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'OKCancel'
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
            Item = bbOK
            Visible = True
          end
          item
            BeginGroup = True
            Item = bbCancel
            Visible = True
          end>
        Name = 'OKCancel'
        NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end>
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    Images = IL
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 128
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
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
      
        'SELECT DISTINCT KAB.FK_ID, KAB.FC_NAME FROM TNAZVRACH NAZ, TKABI' +
        'NET KAB'
      'WHERE FK_SOTRID = :PSOTR'
      '  AND NAZ.FK_KABINETID = KAB.FK_ID')
    Variables.Data = {0300000001000000060000003A50534F5452030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000464B5F49440100000000000700000046435F4E41
      4D45010000000000}
    Cursor = crSQLWait
    Session = osEdit
    BeforeOpen = odsKabinetBeforeOpen
    Left = 24
    Top = 178
  end
  object osEdit: TOracleSession
    LogonUsername = 'ASU'
    LogonPassword = 'ASU'
    LogonDatabase = 'ASU'
    Connected = True
    Left = 168
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
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      ImageIndex = 1
      ShortCut = 13
      OnExecute = aOKExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
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
        'TIMEISL'
      '  FROM TNAZIS ISL'
      ' WHERE FK_ROOMID = :PFK_ROOMID'
      '   AND FD_RUN >= :PFD_DATE AND FD_RUN < TO_DATE(:PFD_DATE)+1'
      'ORDER BY TIMENAZ')
    Variables.Data = {
      03000000020000000B0000003A50464B5F524F4F4D4944030000000000000000
      000000090000003A5046445F444154450C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000020000000700000054494D4549534C0100000000000700000054494D
      454E415A010000000000}
    Cursor = crSQLWait
    Session = osEdit
    Left = 184
    Top = 313
  end
end

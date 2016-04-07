object frmSetSotr: TfrmSetSotr
  Left = 447
  Top = 93
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 512
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 412
    Height = 28
    Align = dalTop
    BarManager = dxBM
    SunkenBorder = True
    UseOwnSunkenBorder = True
  end
  object cxGrZavOtdel: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 412
    Height = 431
    Margins.Top = 0
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    ExplicitLeft = 0
    ExplicitTop = 71
    ExplicitWidth = 418
    ExplicitHeight = 441
    object TVSOTR: TcxGridDBTableView
      OnDblClick = TVSOTRDblClick
      OnKeyDown = TVSOTRKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSotr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'FK_ID'
          Column = VSOTRFIO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object VSOTRFIO: TcxGridDBColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'FC_NAME'
        Width = 172
      end
      object VSOTRSPEC: TcxGridDBColumn
        Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'NAMESPEC'
        Width = 97
      end
    end
    object cxGrZavOtdelLevel1: TcxGridLevel
      GridView = TVSOTR
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 412
    Height = 41
    Margins.Top = 0
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    ExplicitLeft = 0
    ExplicitTop = 30
    ExplicitWidth = 418
    object teFilter: TcxTextEdit
      Left = 122
      Top = 10
      Properties.CharCase = ecUpperCase
      Properties.ClearKey = 119
      Style.LookAndFeel.SkinName = 'Office2007Green'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
      StyleHot.LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 0
      OnClick = teFilterClick
      OnEnter = teFilterEnter
      OnKeyUp = teFilterKeyUp
      Width = 283
    end
    object cxLabel1: TcxLabel
      Left = 12
      Top = 10
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
      Transparent = True
    end
  end
  object dxBM: TdxBarManager
    AllowReset = False
    AutoDockColor = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    ImageOptions.Images = frmMain.ILMain
    LookAndFeel.Kind = lfFlat
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 128
    Top = 128
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBMBar1: TdxBar
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
      FloatLeft = 396
      FloatTop = 96
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbOk'
        end
        item
          Visible = True
          ItemName = 'bbCancel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bbOk: TdxBarButton
      Action = actSet
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object bbCancel: TdxBarButton
      Action = actCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object actlst1: TActionList
    Images = frmMain.ILMain
    Left = 128
    Top = 80
    object actSet: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      ImageIndex = 3
      ShortCut = 113
      OnExecute = actSetExecute
    end
    object actCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ImageIndex = 4
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
  object odsSotr: TOracleDataSet
    SQL.Strings = (
      'select tsotr.fk_id, '
      '       upper(tsotr.fc_fam) as fc_fam_up, '
      
        '       tsotr.fc_fam || '#39' '#39' || decode(asu.varcharisnull(tsotr.fc_' +
        'name), 1, '#39#39', substr(tsotr.fc_name, 0, 1) || '#39'. '#39' || '
      
        '                              decode(asu.varcharisnull(tsotr.fc_' +
        'otch), 1, '#39#39', substr(tsotr.fc_otch, 0, 1) || '#39'. '#39')) as fc_name,'
      '       ts_sprav.fc_name as namespec '
      ' from asu.tsotr, asu.ts_sprav '
      ' where tsotr.fk_spravid = ts_sprav.fk_id'
      '   and tsotr.fl_del = 0'
      '   and ts_sprav.fl_vrach = :pfl_vrach'
      '   and tsotr.fk_otdelid = asu.get_fizio_otdel'
      'order by tsotr.fc_fam'
      '')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A50464C5F565241434803000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000500000005000000464B5F49440100000000000600000046435F4641
      4D0100000000000700000046435F4E414D45010000000000080000004E414D45
      5350454301000000000006000000464C5F44454C010000000000}
    Cursor = crSQLWait
    Session = frmMain.os
    Left = 136
    Top = 200
  end
  object dsSotr: TDataSource
    DataSet = odsSotr
    Left = 72
    Top = 256
  end
end

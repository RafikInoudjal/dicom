object frmOnkoUchetParam: TfrmOnkoUchetParam
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1089#1090#1072#1085#1086#1074#1082#1072' '#1085#1072' '#1086#1085#1082#1086#1091#1095#1077#1090
  ClientHeight = 96
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel20: TcxLabel
    Left = 8
    Top = 63
    Caption = #1044#1080#1072#1075#1085#1086#1079':'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object lcbDiag: TcxLookupComboBox
    Left = 71
    Top = 61
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FK_ID'
    Properties.ListColumns = <
      item
        Caption = #1044#1080#1072#1075#1085#1086#1079
        Width = 600
        FieldName = 'fc_diag'
      end
      item
        Caption = #1044#1072#1090#1072
        Width = 150
        FieldName = 'fd_date'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsDiag
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 620
  end
  object odsDiag: TOracleDataSet
    SQL.Strings = (
      'select d.fk_id,'
      
        '       asu.get_mkb10_from_tsmid(d.fk_smdiagid) || '#39' - '#39' || d.fc_' +
        'write AS fc_diag,'
      '       d.fd_date'
      '       '
      '  from asu.tdiag d'
      
        ' where d.fk_pacid in (select fk_id from asu.tambulance a where a' +
        '.fk_peplid in (select fk_peplid from asu.tambulance where fk_id ' +
        '= :pfk_pacid)'
      '                      union all'
      
        '                      select fk_id from asu.tkarta a where a.fk_' +
        'peplid in (select fk_peplid from asu.tambulance where fk_id = :p' +
        'fk_pacid)'
      '                     )'
      '   and d.fl_main = stat.pkg_statutil.get_smidid('#39'MAIN'#39')'
      '   and d.fp_type = stat.pkg_statutil.get_smidid('#39'PRI_VYPISKE'#39')'
      '   '
      ' order by d.fd_date')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A50464B5F504143494403000000000000000000
      0000}
    Left = 320
  end
  object BM: TdxBarManager
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
    ImageOptions.LargeImages = IL24
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 152
    DockControlHeights = (
      0
      0
      50
      0)
    object BMMainBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 758
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tbtSave'
        end
        item
          Visible = True
          ItemName = 'tbtCancel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tbtSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = tbtSaveClick
      AutoGrayScale = False
    end
    object tbtCancel: TdxBarLargeButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = tbtCancelClick
      AutoGrayScale = False
    end
  end
  object IL24: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 184
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00399C630039A5420029944A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0029944A0031A54A0031A54A0029944A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00399C630031A54A0031A54A0031A54A0031A54A009CAD
          6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0029944A0031A54A0031A54A0031A54A0031A54A002994
          4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00399C630031A54A0031A54A0031A54A0031A54A0031A54A0031A5
          42009CAD6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0029944A0031A54A0031A54A00399C6300298C5A0031A54A0031A5
          4A0029944A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00318C630031A54A0031A54A0031B55200298C5A0031A5420039C6520031A5
          4A0031A54A00739C4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00399C
          630031A54A0031A54A0031B55200298C5A00FF00FF00FF00FF0031A5420039C6
          520031A54A0031A54A009CAD6300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003984
          6B0039C6520031B55200399C4200399C6300FF00FF00FF00FF00FF00FF0031A5
          420039C6520031A54A0029944A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00399C6300298C5A00399C6300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00298C5A0039C6520031A54A006BA54A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00298C5A0031B5520031A542009CAD6300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00298C5A0031B5520031A542009CAD6300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00298C5A0031B5520042A54A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00298C5A0031B5520029944A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00298C5A0031A54A0073AD
          5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00298C5A0031A5
          42008C9C6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00298C
          5A0031A542009CAD6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00298C4A0031A54A009CAD6300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00299C4A00298C5A009CAD6300FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0031A54200298C5A00849C6300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00298C5A00298C4A00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF000000840000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000084000008AD000008A5003942AD00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          84000008B5000008AD000008AD0000008400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000840000008400FF00FF00000084000821
          CE000008B5000008B5000008AD000008AD0000008400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000840008089C0000009C00000084003942AD00294A
          FF000818C6000008B5000008B5000008AD000008A5003942AD00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003942AD00000084000000940000009C0000009C00000084002942D6002952
          FF002142F7000010BD000008B5000008B5000008AD0000008400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          840008089C0000009C0000009C0000009C002131CE00FF00FF003942AD00294A
          F7002952FF001031DE000010BD000008B5000008B5000008AD0000008400FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003942AD00000084000000
          940000009C0000009C0000009C002131CE00FF00FF00FF00FF00FF00FF004A52
          CE003152FF00395AFF000821CE000010BD000008B5000008B5000008AD000000
          8400FF00FF00FF00FF00FF00FF00FF00FF000000840008089C0000009C000000
          9C0000009C0000009C002131CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003142CE004A6BFF00425AEF000010C6000010BD000010BD000008B5000008
          AD0000008400FF00FF003942AD000000840000009C0000009C0000009C000000
          9C00000094002131CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF003142D600637BFF002942DE000010BD000010BD000010BD000008
          B5000810AD00000084000810A5000000A5000000A50000009C0000009C000000
          94002131CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00394ACE006B84F7000821CE000010C6000010BD000010
          BD000008B5000008AD000008AD000008AD000000A5000000A50000009C002131
          CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF003942C6005263E7000010C6000010C6000010
          BD000010BD000008B5000008B5000008AD000008AD000000A5002131CE00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF003942BD000821CE000010C6000010
          C6000010BD000010BD000008B5000008B5000008AD002131CE00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00424ABD000018CE000018CE000010
          C6000010C6000010BD000010BD000008B5001818AD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002131CE000018CE000018D6000018CE000018
          CE000010C6000010C6000010BD000010BD000008B5002131CE00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002131CE000018D6000018DE000018D6000018D6000018
          CE000018CE000010C6000010C6000010BD000010BD000008B5002131CE00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002131CE000018D6000021E7000021DE000021DE000018D6000018
          D6001831DE002939D6000829D6000010C6000010BD000010BD000010AD002131
          CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002131CE000021D6000029E7000021E7000021E7000021DE000021DE00314A
          EF004A5AE7002131CE002131CE001031DE000018C6000010BD000010BD000810
          AD002131CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002131
          CE000821D6000029EF000029EF000029EF000021E7000831E7004263FF004A5A
          E7002131CE00FF00FF00FF00FF002131CE001831DE000821CE000010BD000010
          BD000810AD002131CE00FF00FF00FF00FF00FF00FF00FF00FF002131CE001029
          D6000029F7000029F7000029F7000029EF001842F7004A6BFF004A5AE7002131
          CE00FF00FF00FF00FF00FF00FF00FF00FF002131D6002131CE001031D6000010
          BD000010BD000008B5002131CE00FF00FF00FF00FF00FF00FF002131CE000021
          E7000031FF000029F7000031F7002952FF004A6BFF004A5AE7002131CE00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002131CE002942
          DE000818C6000010BD000008B5002131CE00FF00FF00FF00FF00FF00FF002131
          CE000029EF001039FF00395AFF004A6BFF004A63EF002131CE00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002131
          D6002131CE002131CE000010BD000008B5002131CE00FF00FF00FF00FF00FF00
          FF002131CE003142E7004A63FF004A5AEF002131CE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002131CE003142CE000818C6000008AD002131CE00FF00FF00FF00
          FF00FF00FF002131CE002131CE002131CE00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002131CE002131CE002131CE00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object dsDiag: TDataSource
    DataSet = odsDiag
    Left = 376
  end
end

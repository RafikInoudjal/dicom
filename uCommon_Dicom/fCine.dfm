object frmCine: TfrmCine
  Left = 748
  Top = 462
  BorderStyle = bsNone
  Caption = #1040#1085#1080#1084#1072#1094#1080#1103
  ClientHeight = 33
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 243
    Height = 33
    Align = alClient
    Pen.Color = clNavy
    Pen.Width = 2
    ExplicitLeft = 288
    ExplicitTop = 32
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 3
    Top = 3
    Width = 183
    Height = 28
    Align = dalNone
    BarManager = BM
    SunkenBorder = True
    UseOwnSunkenBorder = True
  end
  object bMove: TcxButton
    Left = 189
    Top = 4
    Width = 25
    Height = 25
    Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnMouseDown = bMoveMouseDown
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3B8FF9900FF9900FF9900FF9900FF9900FF
      9900FF9900FF9900FF9900FF9900FF9900FF9900FFE3B8FFFFFFFFFFFFFF9900
      FFE5E5FFE5E5FFE5E5FFE5E5FFE3E3FFE0E0FFDEDEFFDBDBFFD7D7FFD4D4FFCF
      CFFFCCCCFF9900FFFFFFFFFFFFFF9900FFEAEAFFEAEAFFEAEAFFEAEAFFE6E6FF
      E5E5FFE1E1FFDEDEFFDBDBFFD6D6FFD2D2FFCFCFFF9900FFFFFFFFFFFFFF9900
      FFF0F0FFF0F0FFF0F0FFEEEEFFECECFFE8E8FFE5E5FFE1E1FFDEDEFFD9D9FFD6
      D6FFD1D1FF9900FFFFFFFFFFFFFF9900FFF5F5FFF5F5FFF5F5FFF3F3FFF0F0FF
      EEEEFFE8E8FFE5E5FFE0E0FFDCDCFFD7D7FFD2D2FF9900FFFFFFFFFFFFFF9900
      FFFBFBFFFBFBFFFBFBFFF9F9FFF5F5FFF0F0FFECECFFE6E6FFE3E3FFDEDEFFD9
      D9FFD4D4FF9900FFFFFFFFFFFFFF9900FFFFFFFFFFFFFFFFFFFFFDFDFFF9F9FF
      F3F3FFEEEEFFEAEAFFE5E5FFE0E0FFDBDBFFD6D6FF9900FFFFFFFFFFFFFF9900
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFF5F5FFF0F0FFEAEAFFE5E5FFE0E0FFDB
      DBFFD6D6FF9900FFFFFFFFFFFFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFF
      F5F5FFF0F0FFEAEAFFE5E5FFE0E0FFDBDBFFD6D6FF9900FFFFFFFFFFFFFF9900
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFF5F5FFF0F0FFEAEAFFE5E5FFE0E0FFDB
      DBFFD6D6FF9900FFFFFFFFFFFFFF9900D6D6D6D6D6D6D6D6D6D6D6D6D6D3D3D6
      CECED6CBCBD6C7C7D6C3C3D6BFBFD6BABAD6B6B6FF9900FFFFFFFFFFFFFF9900
      FF9900EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB85
      00F79100FF9900FFFFFFFFFFFFFF9900FFCC99FFCC99FFCC99FFCC99FFCC99FF
      CC99FFCC99FFCC99FFCC99FFCC99FFCC99FFAD3DFF9900FFFFFFFFFFFFFFE3B8
      FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00FF9900FFE3B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LookAndFeel.SkinName = 'Office2007Green'
  end
  object bClose: TcxButton
    Left = 215
    Top = 4
    Width = 25
    Height = 25
    Hint = #1047#1072#1082#1088#1099#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = bCloseClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF5251CE0B15AE9E88A4FFDBA53630AC2C29B2DA
      BAA8FFA318FF9900FF9900FF9900FF9900FF9900FFE3B8FFFFFFFFFFFF2E28AC
      2C72FF1534D42135C4174EFF155CFF3639C4FFF0F0FFDBDBFFD7D7FFD4D4FFCF
      CFFFCCCCFF9900FFFFFFFFFFFF9F89B11325C62C67FF255DFF205BFF1522BECD
      C8EDFFEBEBFFDEDEFFDBDBFFD6D6FFD2D2FFCFCFFF9900FFFFFFFFFFFFFFC266
      BEBBE21022BF2D66FF1C49F47876CBFFF6F6FFE5E5FFE1E1FFDEDEFFD9D9FFD6
      D6FFD1D1FF9900FFFFFFFFFFFFFFD0892D2CAF3F7DFF1C3FDD2961FF1323C5E5
      E1F4FFEDEDFFE5E5FFE0E0FFDCDCFFD7D7FFD2D2FF9900FFFFFFFFFFFFFFD89E
      161EC2396DFF8B8BD43A3BB72B6DFF2A2CBFFFF7F7FFE6E6FFE3E3FFDEDEFFD9
      D9FFD4D4FF9900FFFFFFFFFFFFFFAA2BBDBDF14242C4FFFFFFF4F3FC3434BFC4
      C2F1FFF4F4FFEAEAFFE5E5FFE0E0FFDBDBFFD6D6FF9900FFFFFFFFFFFFFF9900
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF8F8FFF0F0FFEAEAFFE5E5FFE0E0FFDB
      DBFFD6D6FF9900FFFFFFFFFFFFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFF
      F5F5FFF0F0FFEAEAFFE5E5FFE0E0FFDBDBFFD6D6FF9900FFFFFFFFFFFFFF9900
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFF5F5FFF0F0FFEAEAFFE5E5FFE0E0FFDB
      DBFFD6D6FF9900FFFFFFFFFFFFFF9900D6D6D6D6D6D6D6D6D6D6D6D6D6D3D3D6
      CECED6CBCBD6C7C7D6C3C3D6BFBFD6BABAD6B6B6FF9900FFFFFFFFFFFFFF9900
      FF9900EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB8500EB85
      00F79100FF9900FFFFFFFFFFFFFF9900FFCC99FFCC99FFCC99FFCC99FFCC99FF
      CC99FFCC99FFCC99FFCC99FFCC99FFCC99FFAD3DFF9900FFFFFFFFFFFFFFE3B8
      FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF9900FF99
      00FF9900FFE3B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LookAndFeel.SkinName = 'Office2007Green'
  end
  object BM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 8
    Top = 40
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
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 396
      FloatTop = 415
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPlayBack'
        end
        item
          Visible = True
          ItemName = 'bbPlay'
        end
        item
          Visible = True
          ItemName = 'bbStop'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 41
          Visible = True
          ItemName = 'beSpeed'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bbPlay: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1055#1091#1089#1082
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FD19F2BA22F3BA73BCBE9CBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        1F962292E5B36CDA9320A82E6DBF6DF1F9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18921D7AD89A5BD0814FD98132C85D1E
        9D22A9DDA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        178C1A71D49050CB763ECC6D38D26C43DF7C23B73E48AD48DDF3DDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF188B1C6CD08B4BC67037C76433CC6639
        D36D43DD7A41DA7317A12484C684F9FDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        19851C69CC8749C16B34C16030C66034CE6838D26C3FD87448E4812FC2542A9B
        2ACFE9CFFFFFFFFFFFFFFFFFFFFFFFFF19831B6CC9864ABE6936BC5D2BBF592F
        C76133CC6636D06A3AD46E3FD97443DF7D2D962CFFFFFFFFFFFFFFFFFFFFFFFF
        18801B70C8884FBB6A3BB95D29B9522BBE582EC35D30C96332CD6737D36D3BD8
        752B942CFFFFFFFFFFFFFFFFFFFFFFFF197D1A79C78C57BA6E44B76133B55626
        B54E29BA542CC15B33CA6523B046289128CDE6CDFFFFFFFFFFFFFFFFFFFFFFFF
        1B7A1D85CA9462BA7550B66840B35C31B2532AB65127B44E12891A81BC81F8FC
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7A1E94CEA070BC7E5FB87154B76B4B
        BA671E932F449944DAEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        217B21A6D4AD84C38E7CC48A54AC631E7F20A3CEA3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF257D24CDE7D29FCFA72F8A3265A365ED
        F5EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        91BA91328633338433C4DCC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = bbPlayClick
    end
    object bbStop: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1057#1090#1086#1087
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE3B89BCD772CCE7A2BCE7726CF7721D0751DD1
        7519D27618D27518D57718D47818D67A18D67C1EE9C19DFFFFFFFFFFFFC77128
        FFD389FABC61FBB145FCA92BFE9F11FF9B00FF9E00FF9E00FFA000FF9F00FF9F
        00FFA400D47A1DFFFFFFFFFFFFC36D28F6C077F0A94EF09F35F0961CF28E02F4
        8E00F79100FA9400FC9600FF9900FE9800FFA000D17315FFFFFFFFFFFFBF6927
        F2B96FEBA248EA972EEA8C14EB8600EE8800F18B00F38D00F69000F99300FD97
        00FFA000CF7115FFFFFFFFFFFFBC6727EEB46DE69C45E5902BE4850FE57F00E8
        8200EA8400ED8700F08A00F38D00F69000FE9800CA6C15FFFFFFFFFFFFBA6327
        EAB06DE19745DF8B2BDE7F11DF7900E17B00E47E00E78100EA8400ED8700EF89
        00F89200C66A15FFFFFFFFFFFFB66027E6AE71DD9448DB872ED97B15D87300DB
        7500DE7800E17B00E37D00E68000E98300F28C00C46615FFFFFFFFFFFFB35E28
        E4AD76DA944ED78635D57A1CD36E02D56F00D87200DA7400DD7700E07A00E37D
        00EC8600BF6215FFFFFFFFFFFFB05C28E3AF7FD89557D4873FD17B27CF7010CF
        6800D16B00D46E00D77100DA7400DC7600E57F00BC6015FFFFFFFFFFFFAE592A
        E2B38BD69862D28B4BCF7E35CC7320CB6A0BCB6600CE6800D16B00D36D00D670
        00DF7900BA5B15FFFFFFFFFFFFAC582EE2BB98D69D70D2905ACE8445CB7931C9
        701FC86910C86301CA6400CD6700D06A00D87100B55715FFFFFFFFFFFFAE5C31
        E5C2A9D7A580D2976ACE8B57CB8145C97834C87126C86C1BC86A13CA6A0DCD6C
        0DD57713B35619FFFFFFFFFFFFAA5428EFD9CAE2BDA3DCAD8CD6A177D39565CF
        8B54CE8547CD803DCE7D34CF7D2FD3802FDA8935B0561DFFFFFFFFFFFFD5AA99
        AB5428AC5B2FAA5529AA5427A95326AA5324AB5121A95021AB5020AA501FAB51
        20AC531FD7AE9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = bbStopClick
    end
    object beSpeed: TcxBarEditItem
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
      Category = 0
      Hint = #1057#1082#1086#1088#1086#1089#1090#1100':'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.CanEdit = False
      Properties.ImmediatePost = True
      Properties.MaxValue = 8.000000000000000000
      Properties.MinValue = 1.000000000000000000
      InternalEditValue = 1
    end
    object bbPlayBack: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1055#1091#1089#1082' '#1074' '#1086#1073#1088#1072#1090#1085#1091#1102' '#1089#1090#1086#1088#1086#1085#1091
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC4DCC4FF338433FF328633FF91BA91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF5EDFF65A3
        65FF2F8A32FF9FCFA7FFCDE7D2FF257D24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3CEA3FF1E7F20FF54AC
        63FF7CC48AFF84C38EFFA6D4ADFF217B21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAEDDAFF449944FF1E932FFF4BBA67FF54B7
        6BFF5FB871FF70BC7EFF94CEA0FF1E7A1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8FCF8FF81BC81FF12891AFF27B44EFF2AB651FF31B253FF40B3
        5CFF50B668FF62BA75FF85CA94FF1B7A1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCDE6CDFF289128FF23B046FF33CA65FF2CC15BFF29BA54FF26B54EFF33B5
        56FF44B761FF57BA6EFF79C78CFF197D1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2B942CFF3BD875FF37D36DFF32CD67FF30C963FF2EC35DFF2BBE58FF29B9
        52FF3BB95DFF4FBB6AFF70C888FF18801BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2D962CFF43DF7DFF3FD974FF3AD46EFF36D06AFF33CC66FF2FC761FF2BBF
        59FF36BC5DFF4ABE69FF6CC986FF19831BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCFE9CFFF2A9B2AFF2FC254FF48E481FF3FD874FF38D26CFF34CE68FF30C6
        60FF34C160FF49C16BFF69CC87FF19851CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FDF9FF84C684FF17A124FF41DA73FF43DD7AFF39D36DFF33CC
        66FF37C764FF4BC670FF6CD08BFF188B1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF3DDFF48AD48FF23B73EFF43DF7CFF38D2
        6CFF3ECC6DFF50CB76FF71D490FF178C1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9DDA9FF1E9D22FF32C8
        5DFF4FD981FF5BD081FF7AD89AFF18921DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F9F1FF6DBF
        6DFF20A82EFF6CDA93FF92E5B3FF1F9622FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCBE9CBFF3BA73BFF2BA22FFF9FD19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = bbPlayBackClick
    end
  end
end

object frmParam: TfrmParam
  Left = 573
  Top = 369
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 88
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 248
    Height = 26
    Align = dalTop
    BarManager = BM
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 248
    Height = 62
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    object cbSHOWPAC: TcxCheckBox
      Left = 8
      Top = 8
      Caption = #1057#1085#1080#1084#1086#1082' '#1074#1099#1076#1072#1085' '#1085#1072' '#1088#1091#1082#1080
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = 'null'
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 0
      Width = 161
    end
    object cbPODT: TcxCheckBox
      Left = 8
      Top = 32
      Caption = #1057#1086#1074#1087#1072#1076#1077#1085#1080#1077
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 1
      Width = 121
    end
  end
  object BM: TdxBarManager
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
            Item = bbSave
            Visible = True
          end
          item
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
    Images = il
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 152
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    object bbSave: TdxBarButton
      Action = aSave
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object bbCancel: TdxBarButton
      Action = aCancel
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object alOKCancel: TActionList
    Images = il
    Left = 184
    Top = 34
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 0
      ShortCut = 113
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ImageIndex = 1
      ShortCut = 27
      OnExecute = aCancelExecute
    end
  end
  object il: TImageList
    Left = 216
    Top = 34
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000043E9000043E9000043E9000043E9000043E9000043E90000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000034B
      B400034BB4000C5DCF004586CF006392C7005E8CBF003D73B40008479F00003A
      9900043E90000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000034BB400045B
      DE0077B1F000F6F4F600D9E6F000B7D3F000B5D0EE00CFDAE600DED9D5005580
      B0000141A400043E900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      00000000000000000000000000000000000000000000034BB400045BDE009ECA
      F800FEFEFF00599EEF001069E500025CE200025CE2001069E5005CA0EF00F8F4
      EF00809EBC000141A400043E9000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      00000000000000000000000000000000000000000000034BB4007AB5F600FEFE
      FF00287BE700025CE2000055E000025CE2000055E000025CE2000055E0003688
      ED00F8FAF6005E8CBF00043E9000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000000000000800000008000000000
      0000000000000000000000000000000000000F6ADE001169DE00FEFEFF00599E
      EF00025CE200E9F3FD0088BCF3000055E000025CE200C4DDF900C4DDF900025C
      E20064A6F200EEEAE700094FAF00043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000800000000000000000000000800000008000000080
      0000000000000000000000000000000000000F6ADE005DA5F200E6F2FD001674
      E7000565E500C4DDF900FEFEFF0088BCF300C4DDF900FEFEFF0088BCF3000055
      E0000D67E200E3EEF7004787D100043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000F6ADE0088BCF300C6E1FA001176
      EA00096DE9001176EA00C9E2FB00FEFEFF00FEFEFF0088BCF300025CE2000055
      E000025CE200C4DDF90070A9E600043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000F6ADE0089C4F700C9E2FB001A82
      EE00117AED001A82EE00C9E2FB00FEFEFF00FEFEFF0088BCF3000055E000025C
      E2000055E000C4DDF9007AB5F600043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000F6ADE0076BDF900E9F3FD003599
      F3001E89F000C9E2FB00FEFEFF0096C7F700C6E1FA00FEFEFF0088BCF300004F
      E0001069E500E9F3FD00529EF400043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000F6ADE003599F300FEFEFF007FC5
      FA002996F400EFF8FF009ECAF800117AED00117AED00C9E2FB00C4DDF900004F
      E00066A7EF00FEFEFF000D67E200043E90000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000800000008000000000000000000000000000000F6ADE00A5DDFD00FEFE
      FF005AB6F8002A99F4001E89F0001A82EE000B70E9000768E700025CE2003688
      ED00FEFEFF0070AFF400034BB400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000800000008000000080000000000000000000000F6ADE0041AFFC00C5ED
      FF00FEFEFF0081C7FA003599F3001E89F000117AED001878E9005CA0EF00FEFE
      FF009ECAF800045BDE00034BB400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000800000008000000000000000000000000000000F6ADE0045B4
      FE00A5DDFD00FEFEFF00E9F3FD00C9E2FB00C9E2FB00E6F2FD00FEFEFF0070AF
      F400045BDE00034BB40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000F6A
      DE001169DE003AA0F60076BDF9008EC7F80087C0F6005DA5F2000F6AE000034B
      B400034BB4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F6ADE000F6ADE000F6ADE000F6ADE000F6ADE000F6ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFF81F00000000FF7FE00700000000
      FE3FC00300000000FC3F800100000000F81F800100000000F09F000000000000
      E18F000000000000C3CF000000000000C7C7000000000000CFE7000000000000
      FFE3000000000000FFF3800100000000FFF1800100000000FFF9C00300000000
      FFF9E00700000000FFFFF81F00000000}
  end
end

object frmRun: TfrmRun
  Left = 286
  Top = 107
  Caption = #1047#1072#1087#1091#1089#1082' ListDoza.dll'
  ClientHeight = 473
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 862
    Height = 28
    Align = dalTop
    BarManager = BM
    SunkenBorder = True
    UseOwnSunkenBorder = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 862
    Height = 445
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    OnResize = Panel1Resize
  end
  object BM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 320
    Top = 120
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
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 236
      FloatTop = 107
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 252
          Visible = True
          ItemName = 'bePacient'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbLoad'
        end
        item
          Visible = True
          ItemName = 'bbFree'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bePacient: TcxBarEditItem
      Caption = #1055#1072#1094#1080#1077#1085#1090
      Category = 0
      Hint = #1055#1072#1094#1080#1077#1085#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ViewStyle = vsHideCursor
      Properties.OnButtonClick = bePacientPropertiesButtonClick
    end
    object bbLoad: TdxBarButton
      Action = aLoad
      Category = 0
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000DB6900E48400E68300C25E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000E47F00D87600DA8919EEAD5FECAD5AE7870000000000000000
        0000000000000000C15700900000000000000000000000000000000000000000
        000000000000EA7B00D06E00D87A03E4973DFBBF7FFFD09DFFCE9CFFD4ABE98F
        06000000000000000000000000000000B84F00BB520000000000000000000000
        0000000000C36100CB6400CB6600D48120EFA659FFC689FFC68CFFC78DFFC78F
        FFC993FFCFA0E49A2EF18200000000000000000000B94300AB4900BE4D000000
        00000000000000000000D35100C06502E18F3CFEB66BFFC07CFFC07CFFC080FF
        C284FFC48AFFC68DFFC890FFCD9AEBA955E38600000000000000000000A64200
        AD4B02B34A00000000000000000000000000D46100DC842BFFE5C0FFC586FFC2
        81FFC281FFC181FFC282FFC386FFC58AFFC68DFFC992F8BD7DDF7F0000000000
        0000000000A44100C9650FB64A00000000000000000000000000000000D36700
        D3781DD48028D37E22CE7818EEA453FFC183FFC184FFC387FFC58AFFC58DFFCC
        98DC7F00000000000000000000A74300DF7817B6470000000000000000000000
        0000000000000000C97100D66800A44F00BF6200FEBA75FFBF7EFFC081FFC284
        FFC388FFC588FFCA93D98823E68B00000000000000B14C04EC821BB249000000
        00000000000000000000000000000000000000000000CA6500DD8D36FFC17BFF
        BE7BFFC080FFC184FEBE7EFFC387FFC58DE49B47C16B00000000000000B34E05
        FF9622AD4400000000000000000000000000000000000000000000D16700C266
        05FFBC74FFBA74FFBB76FFC180E59946CB740BFFCA90FFC485F3B26AC1660000
        0000000000AA4602FF9E24B95506B44600000000000000000000000000000000
        C26100B75800F5A655FFB86DFFB96EFFBA76FFBE7BC56900CA6700E69E4FFFCA
        92FFC586C365000000000000009B3900FF961DF0851BA34400C32A0000000000
        0000000000C16100B45100E99440FFB668FFB366FFB56CFFBF78D88327D77100
        000000CD6B00FCCC9BFFDBACC368030000000000009A3800EA7D14FF961FEA7F
        1AAF4E00AF4900B74C00B54E00BC5B07F19B44FFB25FFFAF5DFFB262FFB96DEB
        9D4CC46300000000000000DD7300CA700CD1791ACC6900000000000000AF4000
        BB5205FF9C28FF931EFF9927F08B27E68628F29639FFAD51FFAC52FFAB54FFAD
        59FFB566F5A655B85C00DF4400000000000000000000C36200CE550000000000
        0000000000000000A83D00E57C19FFA43FFF921EFF9727FF9C34FFA03EFFA445
        FFA649FFA94FFFBB70F4A250B75800D761000000000000000000000000000000
        00000000000000000000000000000000B13900A13A00E47B1AFFB55CFFB15AFF
        A84DFFA94EFFB262FFC07AFFC077DE8630AC5700D15100000000000000000000
        000000000000000000000000000000000000000000000000000000B03900A93D
        00BC5100E38024FCA54BFFB15AF8A44FDF7F28BB5807B05500FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000B13E00B04000AD4000AF4300B04700B74B00B646000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object bbFree: TdxBarButton
      Action = aFree
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000206B0030AAE0000A600000000000000
        00000000000000000000A700009A0000A70000000000000000000000000000A9
        1844F6194DF81031D20102AB0000000000000000000000B10928D7092ED70313
        B30000AC0000000000000000000103B32451F91F52FF1D4FFF1744E8040BB000
        00000000AC0D2EDD1142F90D3DF50B3BF0041ABC0000A50000000000000000AE
        1832DB285BFF2456FF2253FF1B4BF1050DB10F30DD164AFE1344F91041F60E3E
        F60A3CF000009F0000000000000000BE1F37DD3A6FFF2C5EFF295AFF2657FF20
        52FC1C4FFF194AFD1646FA1445FA0F3DF2020AB10000A8000000000000000000
        0000C8121DC83D6AFB3567FF2C5DFF2859FF2253FF1D4EFF1A4DFF123DED0002
        AC0000BA0000000000000000000000000000000000CC0000B62E4EE73668FF2E
        5EFF2859FF2254FF163DEA0000A80000AB000000000000000000000000000000
        0000000000000000BF253FDF3B6DFF3464FF2E5EFF2759FF1B46EA0001AC0000
        A90000000000000000000000000000000000000000000203C84B7CFF4170FF3B
        6BFF396CFF2D5EFF2558FF1336D70000B6000000000000000000000000000000
        0000000000D9263CDB5080FF4575FF3662FA0D14C33C6DFF2A5BFF2053FD0B1D
        C40000C00000000000000000000000000000000000CB527CFA5081FF4B7DFF0B
        13C90000BB0E15C7386AFF2456FF1A4AF20207B30000B5000000000000000000
        000000131CDD6A9CFF5788FF2B46E70000CD0000000000CD0F1BCB3065FF1F51
        FF1439DD0000B10000000000000000000000000000DE3A52E45782FB0101D000
        00000000000000000000CC1426D6265AFF0F2EE30103B8000000000000000000
        0000000000000000CF0000C00000CE0000000000000000000000000000C40001
        B80000B500000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object bbClose: TdxBarButton
      Action = aClose
      Category = 0
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000120B0000120B0000000100000000000000000000FFFF
        FF00FF00FF004E1E1F00BF4C4D00BD4B4C00C04D4E00C14E4F00C4505100C24F
        5000C5515200B64B4C00C9545500C7535400C6525300CA555600CB565700CE58
        5900CC575800C5545500D05A5B00CF595A00D35C5D00D15B5C00D55E5F00D45D
        5E00D8606200D75F6000AF4E4F00D9626300DD656600DC646500DA636400E067
        6800DE666700E2696A00E1686900E56B6C00E36A6B00E96E6F00E76D6E00E66C
        6D009F4B4C00EA6F7000A04C4D00EB707200A34E4F00EE737400ED7273009C4B
        4C00F2767700F0757600EF747500E06D6E00A6515200F6797A00F4787900F377
        7800A9535400F87B7D00F77A7B00FB7E7F00FA7D7E00AF585900AC5657009A4D
        4E00FF818200FE808100FC7F8000F77E7F00B25B5C00EE7A7B00D56F7000B860
        6200B6626300AF5E5F00FE8B8C0091515200FC929300EF909100FB9A9C00E690
        9100EB959600FAA3A400F8AAAB00F2A9AA00EEA6A700F7B5B600A5505000994B
        4B00AB555500B15A5A00B55D5D00B75F5F00914B4B00BB636300BF666600BD65
        65008C4B4B00894B4B009F58580098555500824B4B00EB9C9C00F7B1B100EECE
        AF00FFFFD300D9F6BD00B7EBAA0058A55B003F9E4C005ED3770045CA67001EBC
        4C00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202020202
        02020202026603020202020202020202020202020202020202026666625E0302
        020202020202020202020202020202666663310B052A03020202020202020202
        02020202026666411C070604042A03596666666666666666020202020266130C
        0D0E0A08092C034C4E505354685757660202020202661112100F0C0D0E2E036E
        71717171717157660202020202661714151112100F58036E7171717171715766
        0202020202661818191617141536036E7171717171715766020202020266201D
        1A1B1819163A036E7171717171715766020202020266221E1F201D1A1B5A036E
        71717171717157660202020202662324212235511F40036D7171717171715766
        020202020266282925265601673F03696C6F6F70707057660202020202662D2B
        27285501525B03696A6A6A6A6B6B5766020202020266342F302D2B4F28460369
        6A6A6A6A6A6A576602020202026639393233342F305C03696A6A6A6A6A6A5766
        0202020202663B3C37383932335D03696A6A6A6A6A6A5766020202020266443D
        3E3B3C37384903696A6A6A6A6A6A576602020202026642424344443D3E5F0369
        6A6A6A6A6A6A5766020202020266424242424243436103696A6A6A6A6A6A5766
        020202020266454242424242426003696A6A6A6A6A6A5766020202020266664B
        48424242426003696A6A6A6A6A6A57660202020202020266664D4A474260035E
        6666666666666666020202020202020202026666656403020202020202020202
        0202020202020202020202020266030202020202020202020202}
      PaintStyle = psCaptionGlyph
    end
  end
  object AL: TActionList
    Left = 376
    Top = 120
    object aLoad: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OnExecute = aLoadExecute
    end
    object aFree: TAction
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100
      OnExecute = aFreeExecute
    end
    object aClose: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = aCloseExecute
    end
  end
  object os: TOracleSession
    Left = 232
    Top = 116
  end
end

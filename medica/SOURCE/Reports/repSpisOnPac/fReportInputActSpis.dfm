object fmReportInputActSpis: TfmReportInputActSpis
  Left = 271
  Top = 190
  Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1072#1082#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 612
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 300
    Top = 44
    Width = 4
    Height = 385
    ExplicitLeft = 310
    ExplicitTop = 38
    ExplicitHeight = 368
  end
  object spltDopParams: TSplitter
    Left = 0
    Top = 429
    Width = 734
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = 261
    ExplicitTop = 44
    ExplicitWidth = 371
  end
  object Panel1: TPanel
    Left = 304
    Top = 44
    Width = 430
    Height = 385
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 518
    ExplicitHeight = 267
    object Splitter2: TSplitter
      Left = 0
      Top = 149
      Width = 430
      Height = 4
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 105
      ExplicitWidth = 336
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 153
      Align = alClient
      Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1089#1087#1080#1089#1072#1085#1085#1099#1093' '#1077#1076#1080#1085#1080#1094' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      ExplicitWidth = 336
      ExplicitHeight = 327
      Height = 232
      Width = 430
      object meSpisano: TcxMemo
        Left = 2
        Top = 21
        Align = alClient
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 332
        ExplicitHeight = 114
        Height = 209
        Width = 426
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 44
      Align = alTop
      Caption = ' '#1047#1072#1082#1083#1102#1095#1077#1085#1080#1077' '#1082#1086#1084#1080#1089#1089#1080#1080' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitWidth = 336
      Height = 105
      Width = 430
      object meZaklKom: TcxMemo
        Left = 2
        Top = 21
        Align = alClient
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 332
        Height = 82
        Width = 426
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Caption = ' '#1055#1088#1080#1082#1072#1079' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      ExplicitWidth = 336
      DesignSize = (
        430
        44)
      Height = 44
      Width = 430
      object tePrikaz: TcxTextEdit
        Left = 2
        Top = 16
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        Text = #1086#1090' "___"  ____________  20___ '#1075'  '#8470' ___'
        ExplicitWidth = 331
        Width = 425
      end
    end
  end
  object CoolBar2: TCoolBar
    Left = 0
    Top = 0
    Width = 734
    Height = 44
    Bands = <
      item
        Control = ToolBar2
        ImageIndex = -1
        MinHeight = 40
        Width = 734
      end>
    EdgeBorders = [ebTop, ebBottom]
    ExplicitWidth = 618
    object ToolBar2: TToolBar
      Left = 9
      Top = 0
      Width = 725
      Height = 40
      BorderWidth = 1
      ButtonHeight = 36
      ButtonWidth = 46
      Caption = 'ToolBar1'
      Images = ilMain
      ShowCaptions = True
      TabOrder = 0
      object tbuOk: TToolButton
        Left = 0
        Top = 0
        Caption = 'Ok'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tbuOkClick
      end
      object tbuCancel: TToolButton
        Left = 46
        Top = 0
        Caption = #1054#1090#1084#1077#1085#1072
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = tbuCancelClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 300
    Height = 385
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitWidth = 257
    ExplicitHeight = 269
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = ' '#1063#1083#1077#1085#1099' '#1082#1086#1084#1080#1089#1089#1080#1080' '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitTop = -8
      ExplicitWidth = 185
      ExplicitHeight = 297
      Height = 385
      Width = 300
      object cxVerticalGrid1: TcxVerticalGrid
        Left = 2
        Top = 21
        Width = 296
        Height = 362
        Align = alClient
        OptionsView.RowHeaderWidth = 138
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 270
      end
    end
  end
  object pnDopParams: TPanel
    Left = 0
    Top = 432
    Width = 734
    Height = 180
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnDopParams'
    TabOrder = 3
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 734
      Height = 180
      Align = alClient
      TabOrder = 0
      TabStop = False
      LookAndFeel = dxLayoutOfficeLookAndFeel1
      ExplicitLeft = 104
      ExplicitTop = 1
      ExplicitWidth = 300
      ExplicitHeight = 250
      object lcbMO: TcxLookupComboBox
        Left = 176
        Top = 30
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.KeyFieldNames = 'MOID'
        Properties.ListColumns = <
          item
            Caption = #1052#1054
            MinWidth = 100
            Width = 100
            FieldName = 'FC_MO_NAME'
          end
          item
            Caption = #1058#1077#1082'.'#1075#1088#1091#1087#1087#1072' '#1052#1054
            FieldName = 'FC_CUR_GROUP_NAME'
          end>
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListSource = dsMO
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 0
        Width = 322
      end
      object edtVIDDEYAT: TcxTextEdit
        Left = 176
        Top = 51
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 1
        Width = 121
      end
      object edtINVNUM: TcxTextEdit
        Left = 176
        Top = 72
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object edtSCHET: TcxTextEdit
        Left = 176
        Top = 93
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 3
        Width = 121
      end
      object edtMVZ: TcxTextEdit
        Left = 176
        Top = 114
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 121
      end
      object edtZakaz: TcxTextEdit
        Left = 176
        Top = 135
        Style.BorderColor = clHighlight
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 121
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
        UseIndent = False
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = #1052#1072#1090'. '#1086#1090#1074#1077#1090'. '#1083#1080#1094#1086
          Control = lcbMO
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
          Control = edtVIDDEYAT
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1086#1073#1098#1077#1082#1090#1072
          Control = edtINVNUM
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = #1057#1095#1077#1090', '#1089#1091#1073#1089#1095#1077#1090' '#1091#1095#1077#1090#1072' '#1079#1072#1090#1088#1072#1090
          Control = edtSCHET
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = #1052#1042#1047
          Control = edtMVZ
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = #1047#1072#1082#1072#1079
          Control = edtZakaz
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object odsSotr: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      
        '  s.FC_FAM || '#39' '#39' || DECODE (decode(s.FC_NAME, null,1 ,0), 1, '#39#39 +
        ', SUBSTR (s.FC_NAME, 0, 1) || '#39'. '#39' || DECODE (decode(s.FC_OTCH, ' +
        'null,1 ,0), 1, '#39#39', SUBSTR (s.FC_OTCH, 0, 1) || '#39'. '#39')) as FC_FIO'
      'FROM med.tsotr_medica s'
      'group by s.FC_FAM, s.FC_NAME, s.FC_OTCH'
      'order by UPPER(s.FC_FAM), s.FC_NAME, s.FC_OTCH')
    Optimize = False
    Left = 296
    Top = 136
  end
  object dsSotr: TDataSource
    DataSet = odsSotr
    Left = 296
    Top = 216
  end
  object ilMain: TImageList
    Left = 192
    Top = 32
    Bitmap = {
      494C0101020004000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000080000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000007B00000000000000
      00007B7B7B00000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B0000000000000000000000000000000000000000007B000000007B00007B00
      00007B0000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000007B0000007B000000
      00007B7B7B007B7B7B0000000000000000000000000000007B00000000000000
      00007B7B7B0000000000000000000000000000FF0000007B0000007B0000007B
      00007B0000007B0000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000000000000000007B7B7B000000000000007B0000007B0000007B000000
      7B000000000000000000000000000000000000FF0000007B0000007B0000007B
      0000007B0000007B00007B0000007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      7B0000007B00000000000000000000007B0000007B0000007B0000007B000000
      7B000000000000000000000000000000000000FF0000007B0000007B0000007B
      0000007B0000007B0000007B00007B0000007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B0000007B0000007B0000007B0000007B0000007B00000000000000
      00000000000000000000000000000000000000FF0000007B0000007B0000007B
      000000FF0000007B0000007B0000007B00007B0000007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B0000007B0000007B0000000000000000000000
      00000000000000000000000000000000000000FF0000007B0000007B00007B00
      000000FF000000FF0000007B0000007B0000007B00007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B007B7B7B00000000000000
      00000000000000000000000000000000000000FF0000007B0000007B00007B00
      00007B7B7B000000000000FF0000007B0000007B0000007B00007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007B0000007B0000007B0000007B00000000007B7B7B000000
      00000000000000000000000000000000000000FF0000007B0000007B00007B00
      00007B7B7B000000000000FF000000FF0000007B0000007B0000007B00007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B0000007B0000007B0000007B00000000007B7B
      7B00000000000000000000000000000000000000000063FF000000FF0000007B
      00000000000000000000000000000000000000FF0000007B0000007B00007B00
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000007B000000FF000000FF0000007B00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000A5FF0000007B0000007B
      00007B0000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B0000007B00000000007B7B7B0000000000000000000000FF0000007B000000
      7B00000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF0000007B
      0000007B00007B0000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000007B000000
      7B00000000007B7B7B00000000000000000000000000000000000000FF000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000007B0000007B00007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B00848484000000000000000000000000000000000000000000000000000000
      FF0000007B0000007B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000007B00007B0000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF0000007B00007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFE7FF000000008FFFC3FF00000000
      078F81FF00000000038700FF000000008107007F00000000800F003F00000000
      C01F001F00000000E03F001F00000000F03F040F00000000F01F040700000000
      E00F8F0300000000E007FF0100000000C183FFC00000000083C3FFE000000000
      C7E1FFF000000000FFF3FFF80000000000000000000000000000000000000000
      000000000000}
  end
  object odsMO: TOracleDataSet
    SQL.Strings = (
      'select '
      '       M.MOID,'
      '       InitCap ( M.FC_NAME ) as FC_MO_NAME,'
      '       M.FK_PARENT,'
      '       M.FK_SOTRID,'
      '       S.FK_OTDID,'
      '       O.FC_NAME as FC_OTDEL,'
      '       MG.FC_GROUP   as FC_CUR_GROUP_NAME'
      '  from MED.TMO M,'
      
        '       (select FC_NAME, FK_SOTRID as FK_ID, FK_OTDELID as FK_OTD' +
        'ID'
      '          from MED.VSOTR_BY_OTDEL'
      '         where FN_LEVEL = 1) S,'
      '       (select FC_NAME, FK_OTDELID as FK_ID'
      '          from MED.VSOTR_BY_OTDEL'
      '         where FN_LEVEL = 0) O,'
      '       MED.TMO_GROUP MG'
      ''
      ' where M.FK_SOTRID = S.FK_ID'
      '   and S.FK_OTDID = O.FK_ID(+)'
      '      --  AND M.FC_NAME <> '#39#39
      '   and M.MOID <> MED.PKGTMO.GET_PRODUCE_POSTAV_TMO'
      '      --  AND M.MOID = COUNT_DOC.MOID (+)'
      '   and M.FK_CURMOGROUPID = MG.GROUPID(+)'
      '   and NVL(M.FL_DEL, 0) = 0'
      'ORDER By UPPER(M.FC_NAME)')
    Optimize = False
    Left = 368
    Top = 416
  end
  object dsMO: TDataSource
    DataSet = odsMO
    Left = 336
    Top = 416
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 424
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderColor = clHighlight
      ItemOptions.ControlBorderStyle = lbsSingle
    end
  end
end

object frmNaprRad: TfrmNaprRad
  Left = 300
  Top = 24
  BorderStyle = bsDialog
  Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 608
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 564
    Width = 850
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object bCancel: TcxButton
      Left = 767
      Top = 8
      Width = 75
      Height = 25
      Action = aCancel
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object bOk: TcxButton
      Left = 686
      Top = 8
      Width = 75
      Height = 25
      Action = aOk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object bPrint: TcxButton
      Left = 6
      Top = 8
      Width = 75
      Height = 25
      Action = aPrint
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object bInfo: TcxButton
      Left = 87
      Top = 8
      Width = 75
      Height = 25
      Action = aInfo
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object bBase: TcxButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Action = aBase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object bAgree: TcxButton
      Left = 249
      Top = 8
      Width = 75
      Height = 25
      Action = aAgreeProc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      LookAndFeel.SkinName = 'Office2007Green'
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 850
    Height = 558
    Margins.Bottom = 0
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object vgrPac: TcxVerticalGrid
      Left = 6
      Top = 6
      Width = 563
      Height = 150
      OptionsView.RowHeaderWidth = 124
      TabOrder = 0
      object rowStatusPac: TcxEditorRow
        Options.Focusing = False
        Options.TabStop = False
        Properties.Caption = #1055#1072#1094#1080#1077#1085#1090
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Header = stRed
        Styles.Content = stRed
      end
      object rowFam: TcxEditorRow
        Properties.Caption = #1060#1072#1084#1080#1083#1080#1103
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.CharCase = ecUpperCase
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowName: TcxEditorRow
        Properties.Caption = #1048#1084#1103
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.CharCase = ecUpperCase
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowOtch: TcxEditorRow
        Properties.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.CharCase = ecUpperCase
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowSex: TcxEditorRow
        Properties.Caption = #1055#1086#1083
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.ImmediateUpdateText = True
        Properties.EditProperties.Items.Strings = (
          #1084#1091#1078#1089#1082#1086#1081
          #1078#1077#1085#1089#1082#1080#1081)
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowRojd: TcxEditorRow
        Properties.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.DateButtons = [btnToday]
        Properties.EditProperties.DateOnError = deToday
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.ValueType = 'DateTime'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = 0d
      end
      object rowGra: TcxEditorRow
        Properties.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsGra
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowSoc: TcxEditorRow
        Properties.Caption = #1057#1086#1094#1080#1072#1083#1100#1085#1099#1081' '#1089#1090#1072#1090#1091#1089
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsStatus
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object vgrMK: TcxVerticalGrid
      Left = 571
      Top = 6
      Width = 271
      Height = 150
      OptionsView.RowHeaderWidth = 132
      TabOrder = 1
      object rowSumDoza: TcxEditorRow
        Options.Focusing = False
        Options.TabStop = False
        Properties.Caption = #1057#1091#1084#1084#1072#1088#1085#1072#1103' '#1076#1086#1079#1072'('#1084#1047#1074')'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Header = stRed
        Styles.Content = stRed
      end
      object rowEdit: TcxEditorRow
        Options.Focusing = False
        Options.TabStop = False
        Properties.Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Header = stRed
        Styles.Content = stRed
        Visible = False
      end
      object rowMK: TcxEditorRow
        Properties.Caption = #8470' '#1052#1050
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = False
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = ''
      end
      object rowKMNS: TcxEditorRow
        Properties.Caption = #1050#1086#1088#1077#1085#1085#1086#1077' '#1085#1072#1089#1077#1083#1077#1085#1080#1077
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsKorennoe
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowProj: TcxEditorRow
        Properties.Caption = #1055#1088#1086#1078#1080#1074#1072#1077#1090
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsRegPrin
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowPhone: TcxEditorRow
        Properties.Caption = #1047#1072#1087#1080#1089#1072#1085' '#1087#1086' '#1090#1077#1083#1077#1092#1086#1085#1091
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowVidOpl: TcxEditorRow
        Properties.Caption = #1042#1080#1076' '#1086#1087#1083#1072#1090#1099
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsVidOplat
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.EditProperties.OnEditValueChanged = rowVidOplEditPropertiesEditValueChanged
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowCompany: TcxEditorRow
        Properties.Caption = #1050#1086#1084#1087#1072#1085#1080#1103
        Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
        Properties.EditProperties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000000000000000
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
            Kind = bkGlyph
          end>
        Properties.EditProperties.ViewStyle = vsHideCursor
        Properties.EditProperties.OnButtonClick = rowCompanyEditPropertiesButtonClick
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object cxLabel1: TcxLabel
      Left = 6
      Top = 167
      Caption = #1040#1076#1088#1077#1089':'
    end
    object memAdr: TcxMemo
      Left = 51
      Top = 156
      Style.BorderStyle = ebsNone
      TabOrder = 3
      Height = 34
      Width = 791
    end
    object vgrMiddle: TcxVerticalGrid
      Left = 6
      Top = 195
      Width = 836
      Height = 86
      OptionsView.RowHeaderWidth = 121
      TabOrder = 4
      object rowNapr: TcxEditorRow
        Properties.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085
        Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
        Properties.EditProperties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000A40206B0030AAE0000A600009800000000
              00000000000000000000A700009A0000A70000000000000000000000000000A9
              1844F6194DF81031D20102AB0000B60000000000000000B10928D7092ED70313
              B30000AC0000000000000000000103B32451F91F52FF1D4FFF1744E8040BB000
              00B00000AC0D2EDD1142F90D3DF50B3BF0041ABC0000A50000000000000000AE
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
              B80000B500007700000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Kind = bkGlyph
          end>
        Properties.EditProperties.ViewStyle = vsHideCursor
        Properties.EditProperties.OnButtonClick = rowNaprEditPropertiesButtonClick
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowNaprSotr: TcxEditorRow
        Properties.Caption = #1053#1072#1087#1088#1072#1074#1080#1074#1096#1080#1081' '#1074#1088#1072#1095
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowDs: TcxEditorRow
        Properties.Caption = #1044#1080#1072#1075#1085#1086#1079
        Properties.EditPropertiesClassName = 'TcxMemoProperties'
        Properties.EditProperties.ScrollBars = ssVertical
        Properties.EditProperties.VisibleLineCount = 3
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
    end
    object vgrUsl: TcxVerticalGrid
      Left = 6
      Top = 283
      Width = 563
      Height = 129
      OptionsView.RowHeaderWidth = 121
      TabOrder = 5
      object rowNum: TcxEditorRow
        Properties.Caption = #8470' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.MaxLength = 20
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Content = stAbsolut
      end
      object rowUsl: TcxEditorRow
        Properties.Caption = #1059#1089#1083#1091#1075#1072
        Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
        Properties.EditProperties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.EditProperties.ViewStyle = vsHideCursor
        Properties.EditProperties.OnButtonClick = rowUslEditPropertiesButtonClick
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
        Styles.Header = stBold
        Styles.Content = stBold
      end
      object rowTime: TcxEditorRow
        Properties.Caption = #1042#1088#1077#1084#1103' ('#1084#1080#1085'.)'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.EditProperties.AssignedValues.MinValue = True
        Properties.EditProperties.CanEdit = False
        Properties.EditProperties.ImmediatePost = True
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = 0
      end
      object rowNad: TcxEditorRow
        Properties.Caption = #1053#1072#1076#1073#1072#1074#1082#1072
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsNadbavka
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.EditProperties.OnChange = rowNadEditPropertiesChange
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowUrg: TcxEditorRow
        Properties.Caption = #1057#1088#1086#1095#1085#1086#1089#1090#1100
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsUrgent
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowTarget: TcxEditorRow
        Properties.Caption = #1062#1077#1083#1100
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsTarget
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowKrat: TcxEditorRow
        Properties.Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsKrat
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object cxVerticalGrid8: TcxVerticalGrid
      Left = 571
      Top = 415
      Width = 271
      Height = 93
      TabOrder = 6
      object cxVerticalGrid8CategoryRow1: TcxCategoryRow
        Options.Focusing = False
        Options.TabStop = False
        Properties.Caption = #1042#1099#1076#1072#1095#1072' '#1089#1085#1080#1084#1082#1086#1074
      end
      object rowKolvo: TcxEditorRow
        Properties.Caption = #1050#1086#1083'-'#1074#1086' '#1083#1080#1089#1090#1086#1074
        Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditProperties.MaskKind = emkRegExpr
        Properties.EditProperties.EditMask = '\d+'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowKuda: TcxEditorRow
        Properties.Caption = #1050#1091#1076#1072' '#1074#1099#1076#1072#1085#1086
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsOtdelVydano
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowPrim: TcxEditorRow
        Properties.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object merDate: TcxMultiEditorRow
        Properties.Editors = <
          item
            Caption = #1042#1099#1076#1072#1095#1072
            EditPropertiesClassName = 'TcxDateEditProperties'
            EditProperties.DateButtons = [btnToday]
            EditProperties.ImmediatePost = True
            EditProperties.PostPopupValueOnTab = True
            EditProperties.SaveTime = False
            EditProperties.ShowTime = False
            DataBinding.ValueType = 'String'
            Options.ShowEditButtons = eisbAlways
            Value = Null
          end
          item
            Caption = #1042#1086#1079#1074#1088#1072#1090
            EditPropertiesClassName = 'TcxDateEditProperties'
            EditProperties.DateButtons = [btnToday]
            EditProperties.ImmediatePost = True
            EditProperties.PostPopupValueOnTab = True
            EditProperties.SaveTime = False
            EditProperties.ShowTime = False
            DataBinding.ValueType = 'String'
            Options.ShowEditButtons = eisbAlways
            Value = Null
          end>
      end
    end
    object vgrPod: TcxVerticalGrid
      Left = 6
      Top = 510
      Width = 836
      Height = 41
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      TabOrder = 7
      object merDateTime: TcxMultiEditorRow
        Properties.Editors = <
          item
            Caption = #1044#1072#1090#1072
            EditPropertiesClassName = 'TcxDateEditProperties'
            EditProperties.DateButtons = [btnToday]
            EditProperties.ImmediatePost = True
            EditProperties.PostPopupValueOnTab = True
            EditProperties.SaveTime = False
            EditProperties.ShowTime = False
            DataBinding.ValueType = 'DateTime'
            Options.ShowEditButtons = eisbAlways
            Value = 0d
          end
          item
            Caption = #1042#1088#1077#1084#1103
            EditPropertiesClassName = 'TcxTimeEditProperties'
            EditProperties.ImmediatePost = True
            EditProperties.TimeFormat = tfHourMin
            DataBinding.ValueType = 'DateTime'
            Options.ShowEditButtons = eisbAlways
            Value = 0d
          end>
      end
      object rowSotr: TcxEditorRow
        Properties.Caption = #1051#1072#1073#1086#1088#1072#1085#1090
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsRgLaborant
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object vgrRost: TcxVerticalGrid
      Left = 6
      Top = 415
      Width = 331
      Height = 93
      OptionsView.RowHeaderWidth = 167
      TabOrder = 8
      object merWH: TcxMultiEditorRow
        Properties.Editors = <
          item
            Caption = #1056#1086#1089#1090' ('#1084')'
            EditPropertiesClassName = 'TcxMaskEditProperties'
            EditProperties.EditMask = '!9,99'
            DataBinding.ValueType = 'String'
            Value = Null
          end
          item
            Caption = #1042#1077#1089' ('#1082#1075')'
            EditPropertiesClassName = 'TcxCurrencyEditProperties'
            EditProperties.AssignedValues.DisplayFormat = True
            DataBinding.ValueType = 'String'
            Value = Null
          end>
      end
      object rowVol: TcxEditorRow
        Properties.Caption = #1054#1073#1098#1077#1084' '#1056#1060#1055' ('#1084#1083')'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object merVve: TcxMultiEditorRow
        Properties.Editors = <
          item
            Caption = #1042#1074#1077#1076#1077#1085#1086' ('#1052#1041#1082') '#1085#1072
            EditPropertiesClassName = 'TcxSpinEditProperties'
            EditProperties.ImmediatePost = True
            DataBinding.ValueType = 'String'
            Options.ShowEditButtons = eisbAlways
            Value = Null
          end
          item
            Caption = #1095#1072#1089#1086#1074
            EditPropertiesClassName = 'TcxSpinEditProperties'
            EditProperties.ImmediatePost = True
            DataBinding.ValueType = 'String'
            Options.ShowEditButtons = eisbAlways
            Value = Null
          end
          item
            Caption = #1084#1080#1085#1091#1090
            EditPropertiesClassName = 'TcxSpinEditProperties'
            EditProperties.ImmediatePost = True
            DataBinding.ValueType = 'String'
            Options.ShowEditButtons = eisbAlways
            Value = Null
          end>
        Styles.Content = stAbsolut
      end
      object rowAct: TcxEditorRow
        Properties.Caption = #1054#1089#1090#1072#1090#1086#1095#1085#1072#1103' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1100' ('#1052#1041#1082')'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.AssignedValues.DisplayFormat = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowVvodRFP: TcxEditorRow
        Properties.Caption = #1057#1087#1086#1089#1086#1073' '#1074#1074#1086#1076#1072' '#1056#1060#1055
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsVvodRFP
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object vgrKontrast: TcxVerticalGrid
      Left = 339
      Top = 415
      Width = 230
      Height = 93
      OptionsView.RowHeaderWidth = 97
      TabOrder = 9
      object catKontrast: TcxCategoryRow
        Options.Focusing = False
        Options.Moving = False
        Options.TabStop = False
        Properties.Caption = #1050#1086#1085#1090#1088#1072#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
      end
      object rowTypeKontrast: TcxEditorRow
        Properties.Caption = #1050#1086#1085#1090#1088#1072#1089#1090
        Properties.EditPropertiesClassName = 'TcxButtonEditProperties'
        Properties.EditProperties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.EditProperties.ViewStyle = vsHideCursor
        Properties.EditProperties.OnButtonClick = rowTypeKontrastEditPropertiesButtonClick
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowKolvoKontrast: TcxEditorRow
        Properties.Caption = #1050#1086#1083'-'#1074#1086
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.AssignedValues.DisplayFormat = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
      end
      object rowTypeVvod: TcxEditorRow
        Properties.Caption = #1057#1087#1086#1089#1086#1073' '#1074#1074#1086#1076#1072
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsVvod
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowKto: TcxEditorRow
        Properties.Caption = #1050#1090#1086' '#1074#1074#1105#1083
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsKtoKontrast
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
    object vgrDop: TcxVerticalGrid
      Left = 571
      Top = 283
      Width = 271
      Height = 129
      TabOrder = 10
      object rowRFP: TcxEditorRow
        Properties.Caption = #1056#1060#1055
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsRFP
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
        Styles.Content = stAbsolut
      end
      object rowScan: TcxEditorRow
        Properties.Caption = #1056#1077#1078#1080#1084
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsScan
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowCntSnimki: TcxEditorRow
        Properties.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1085#1080#1084#1082#1086#1074
        Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditProperties.MaskKind = emkRegExpr
        Properties.EditProperties.EditMask = '\d+'
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Content = stAbsolut
      end
      object rowDoza: TcxEditorRow
        Properties.Caption = #1044#1086#1079#1072' ('#1084#1047#1074')'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.AssignedValues.DisplayFormat = True
        Properties.EditProperties.DecimalPlaces = 4
        Properties.DataBinding.ValueType = 'String'
        Properties.Value = Null
        Styles.Content = stAbsolut
      end
      object rowTypePlenka: TcxEditorRow
        Properties.Caption = #1058#1080#1087' '#1087#1083#1077#1085#1082#1080
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsTypePlenka
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowLists: TcxEditorRow
        Properties.Caption = #1051#1080#1089#1090#1099
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'FK_ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'FC_NAME'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsKolvoListov
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
      object rowType: TcxEditorRow
        Properties.Caption = #1058#1080#1087
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.DropDownSizeable = True
        Properties.EditProperties.GridMode = True
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'fk_id'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'fc_name'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.EditProperties.ListSource = dsTypeR
        Properties.EditProperties.PostPopupValueOnTab = True
        Properties.DataBinding.ValueType = 'String'
        Properties.Options.ShowEditButtons = eisbAlways
        Properties.Value = Null
      end
    end
  end
  object odsTarget: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'I' +
        'SSL_TARGET'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 926
    Top = 387
  end
  object dsTarget: TDataSource
    DataSet = odsTarget
    Left = 962
    Top = 387
  end
  object odsVidOplat: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER, FC_SYNONIM '
      '  FROM TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'A' +
        'MBTALON_OPL'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000400000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F524445520100000000000A0000004643
      5F53594E4F4E494D010000000000}
    Session = frmMain.os
    Left = 925
    Top = 243
  end
  object dsVidOplat: TDataSource
    DataSet = odsVidOplat
    Left = 962
    Top = 243
  end
  object odsUrgent: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'N' +
        'AZN_TYPES'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 930
    Top = 290
  end
  object dsUrgent: TDataSource
    DataSet = odsUrgent
    Left = 962
    Top = 290
  end
  object odsKorennoe: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'K' +
        'OREN_NASEL'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 930
    Top = 146
  end
  object dsKorennoe: TDataSource
    DataSet = odsKorennoe
    Left = 962
    Top = 146
  end
  object odsRegPrin: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FC_SYNONIM, FK_OWNER, FN_ORDER, FL_DEL  '
      '  FROM TSMID '
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'P' +
        'D_MZ'#39')'
      '   AND FL_SHOWPRINT = 1 '
      '   AND FL_DEL = 0'
      ''
      'UNION ALL'
      ''
      'SELECT FK_ID, FC_NAME, FC_SYNONIM, FK_OWNER, FN_ORDER, FL_DEL  '
      '  FROM TSMID '
      ' WHERE FC_SYNONIM = '#39'LIVEIN_SELO'#39
      '   AND FL_SHOWPRINT = 1 '
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER   ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000600000005000000464B5F49440100000000000700000046435F4E41
      4D450100000000000A00000046435F53594E4F4E494D01000000000008000000
      464B5F4F574E455201000000000008000000464E5F4F52444552010000000000
      06000000464C5F44454C010000000000}
    Session = frmMain.os
    Left = 928
    Top = 191
  end
  object dsRegPrin: TDataSource
    DataSet = odsRegPrin
    Left = 960
    Top = 192
  end
  object odsOtdelVydano: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME '
      '  FROM TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM TSMID WHERE FC_SYNONIM = '#39'O' +
        'TDEL_VYDANO'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      ''
      '/*UNION ALL'
      ''
      'SELECT FK_ID, FC_NAME FROM TOTDEL OTD '
      'WHERE OTD.FK_ID <> GET_STOTDEL'
      
        '  AND (SELECT COUNT(*) FROM TOTDEL WHERE TOTDEL.FK_OWNERID = OTD' +
        '.FK_ID) = 0'
      'START WITH OTD.FK_ID = GET_STOTDEL'
      'CONNECT BY PRIOR OTD.FK_ID = OTD.FK_OWNERID'
      ''
      'UNION ALL'
      ''
      'SELECT FK_ID, FC_NAME FROM TOTDEL OTD '
      'WHERE OTD.FK_ID <> GET_POLIKOTDEL'
      
        '  AND (SELECT COUNT(*) FROM TOTDEL WHERE TOTDEL.FK_OWNERID = OTD' +
        '.FK_ID) = 0'
      'START WITH OTD.FK_ID = GET_POLIKOTDEL'
      'CONNECT BY PRIOR OTD.FK_ID = OTD.FK_OWNERID */'
      ''
      'ORDER BY FC_NAME'
      ''
      ''
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000700000046435F4E414D4501000000000005000000464B5F
      4944010000000000}
    Session = frmMain.os
    Left = 930
    Top = 483
  end
  object dsOtdelVydano: TDataSource
    DataSet = odsOtdelVydano
    Left = 962
    Top = 483
  end
  object al: TActionList
    Left = 392
    Top = 40
    object aOk: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ShortCut = 113
      OnExecute = aOkExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ShortCut = 27
      OnExecute = aCancelExecute
    end
    object aPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      ShortCut = 16464
      OnExecute = aPrintExecute
    end
    object aInfo: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1072#1094#1080#1077#1085#1090#1077
      ShortCut = 16457
      OnExecute = aInfoExecute
    end
    object aBase: TAction
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093' '#1087#1072#1094#1080#1077#1085#1090#1072
      ShortCut = 16456
      OnExecute = aBaseExecute
    end
    object aAgreeProc: TAction
      Caption = #1057#1086#1075#1083#1072#1089#1080#1077
      Hint = #1057#1086#1075#1083#1072#1089#1080#1077' '#1087#1072#1094#1080#1077#1085#1090#1072' '#1085#1072' '#1083#1091#1095#1077#1074#1091#1102' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      OnExecute = aAgreeProcExecute
    end
  end
  object odsGra: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'LD_GRAGZ'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 930
    Top = 51
  end
  object dsGra: TDataSource
    DataSet = odsGra
    Left = 962
    Top = 51
  end
  object odsStatus: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'LD_SOC_POL'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 930
    Top = 99
  end
  object dsStatus: TDataSource
    DataSet = odsStatus
    Left = 962
    Top = 99
  end
  object srMain: TcxStyleRepository
    Left = 347
    Top = 43
    PixelsPerInch = 96
    object stRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object stBold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stAbsolut: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object odsKrat: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FK_OWNER, FN_ORDER '
      '  FROM ASU.TSMID'
      ' WHERE FL_SHOWPRINT = 1 '
      
        '   AND FK_ID <> (SELECT FK_ID FROM ASU.TSMID WHERE FC_SYNONIM = ' +
        #39'XRAY_KRATNOST'#39') '
      
        'START WITH FK_ID = (SELECT FK_ID FROM ASU.TSMID WHERE FC_SYNONIM' +
        ' = '#39'XRAY_KRATNOST'#39')'
      'CONNECT BY PRIOR FK_ID = FK_OWNER '
      'ORDER BY FN_ORDER '
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000400000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464B5F4F574E455201000000000008000000464E
      5F4F52444552010000000000}
    Session = frmMain.os
    Left = 930
    Top = 435
  end
  object dsKrat: TDataSource
    DataSet = odsKrat
    Left = 962
    Top = 435
  end
  object odsVidDoc: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_VIDDOCID '
      '  FROM asu.TDOCOBSL, asu.TAMBULANCE'
      ' WHERE TDOCOBSL.FK_ID = TAMBULANCE.FK_DOCOBSL'
      '   AND TAMBULANCE.FK_ID = :PFK_ID')
    Optimize = False
    Variables.Data = {0300000001000000070000003A50464B5F4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {04000000010000000B000000464B5F564944444F434944010000000000}
    Session = frmMain.os
    BeforeOpen = odsVidDocBeforeOpen
    Left = 1058
    Top = 99
  end
  object odsNadbavka: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER, FC_SYNONIM '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'TIME_NORMA_ISSL'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 51
  end
  object dsNadbavka: TDataSource
    DataSet = odsNadbavka
    Left = 1194
    Top = 51
  end
  object odsRgLaborant: TOracleDataSet
    SQL.Strings = (
      'SELECT 1 AS FK_ID, '#39' '#39' AS FC_FAM, FC_NAME'
      '  FROM asu.TSMID'
      
        'WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM =' +
        ' '#39'RG_LABORANT'#39')'
      ''
      'UNION ALL'
      ''
      'SELECT FK_ID, FC_FAM, FC_FAM || '#39' '#39' || '
      
        '       DECODE(asu.VarcharIsNUll(FC_NAME), 1, '#39#39', SUBSTR(FC_NAME,' +
        ' 0, 1) || '#39'. '#39' || '
      
        '       DECODE (asu.VarcharIsNUll(FC_OTCH), 1, '#39#39', SUBSTR(FC_OTCH' +
        ', 0, 1) || '#39'. '#39')) AS FC_NAME'
      '  FROM asu.TSOTR '
      ' WHERE FK_OTDELID = :PFK_OTDELID '
      '   AND FK_SPRAVID = asu.GET_XRAY_LABORANT'
      '   AND FL_DEL = 0'
      'ORDER BY FC_NAME'
      '')
    Optimize = False
    Variables.Data = {
      03000000010000000C0000003A50464B5F4F5444454C49440300000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000700000046435F4E414D4501000000000005000000464B5F
      49440100000000000600000046435F46414D010000000000}
    Session = frmMain.os
    BeforeOpen = odsRgLaborantBeforeOpen
    Left = 1162
    Top = 107
  end
  object dsRgLaborant: TDataSource
    DataSet = odsRgLaborant
    Left = 1194
    Top = 107
  end
  object odsTypePlenka: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME '
      '  FROM ASU.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM ASU.TSMID WHERE FC_SYNONIM ' +
        '= '#39'RAD_VIDPLENKI'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FC_NAME')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000464B5F49440100000000000700000046435F4E41
      4D45010000000000}
    Session = frmMain.os
    Left = 1160
    Top = 217
  end
  object dsTypePlenka: TDataSource
    DataSet = odsTypePlenka
    Left = 1192
    Top = 218
  end
  object odsKolvoListov: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FK_DEFAULT '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'XRAY_KOLVO_LISTOV'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D450100000000000A000000464B5F44454641554C54010000000000}
    Session = frmMain.os
    Left = 1160
    Top = 161
  end
  object dsKolvoListov: TDataSource
    DataSet = odsKolvoListov
    Left = 1192
    Top = 162
  end
  object odsVvod: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME'
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'XRAY_VVOD'#39')'
      '   AND FL_SHOWPRINT = 1'
      'ORDER BY FN_ORDER ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000464B5F49440100000000000700000046435F4E41
      4D45010000000000}
    Session = frmMain.os
    Left = 1160
    Top = 267
  end
  object dsVvod: TDataSource
    DataSet = odsVvod
    Left = 1192
    Top = 266
  end
  object odsKtoKontrast: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'KTO_KONTRAST'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 323
  end
  object dsKtoKontrast: TDataSource
    DataSet = odsKtoKontrast
    Left = 1194
    Top = 323
  end
  object odsRFP: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= :PFC_SYNONIM)'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    Variables.Data = {
      03000000010000000C0000003A5046435F53594E4F4E494D0500000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 379
  end
  object dsRFP: TDataSource
    DataSet = odsRFP
    Left = 1194
    Top = 379
  end
  object odsScan: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'RADIO_TYPESCAN'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 435
  end
  object dsScan: TDataSource
    DataSet = odsScan
    Left = 1194
    Top = 435
  end
  object frxReport1: TfrxReport
    Version = '4.9.46'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 0.999999984306749400
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39300.405691006900000000
    ReportOptions.LastChange = 41268.411781319460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 395
    Top = 99
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 302.362400000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child1
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 41.574830000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1116#1056#1106#1056#1119#1056#160#1056#1106#1056#8217#1056#8250#1056#8226#1056#1116#1056#152#1056#8226' '#1056#1116#1056#1106' '#1056#160#1056#1106#1056#8221#1056#152#1056#1115#1056#1116#1056#1032#1056#1113#1056#8250#1056#152#1056#8221#1056#1116#1056#1115#1056#8226' '#1056#152#1056#1038#1056#1038#1056 +
              #8250#1056#8226#1056#8221#1056#1115#1056#8217#1056#1106#1056#1116#1056#152#1056#8226' '#1074#8222#8211' [NUMISSL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 127.652220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#160#1056#181#1056#1029#1057#8218#1056#1110#1056#181#1056#1029'-'#1056#187#1056#176#1056#177#1056#1109#1057#1026#1056#176#1056#1029#1057#8218':')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 0.236240000000000000
          Top = 111.504020000000000000
          Width = 113.201880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#8224#1056#1105#1056#181#1056#1029#1057#8218':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 0.015770000000000000
          Top = 133.401670000000000000
          Width = 112.629870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1026#1056#1109#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Top = 133.417315510000000000
          Width = 102.575040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1114#1056#1116#1056#1038':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 428.086890000000000000
          Top = 179.149598980000000000
          Width = 100.295980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#182#1056#1105#1056#1030#1056#176#1056#181#1057#8218':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1.015770000000000000
          Top = 219.212591100000000000
          Width = 114.599060000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1106#1056#1169#1057#1026#1056#181#1057#1027', '#1057#8218#1056#181#1056#187#1056#181#1057#8222#1056#1109#1056#1029':')
          ParentFont = False
          WordBreak = True
        end
        object Memo8: TfrxMemoView
          Left = 427.086890000000000000
          Top = 111.724490000000000000
          Width = 103.427990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1114#1056#1113':')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 0.236240000000000000
          Top = 275.905690000000000000
          Width = 108.711750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1111#1057#1026#1056#176#1056#1030#1056#187#1056#181#1056#1029':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 1.015770000000000000
          Top = 158.976500000000000000
          Width = 111.494830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 427.086890000000000000
          Top = 156.322837090000000000
          Width = 101.031750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 427.086890000000000000
          Top = 275.905504490000000000
          Width = 101.039270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1111#1057#1026#1056#176#1056#1030#1056#1105#1056#1030#1057#8364#1056#1105#1056#8470':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 117.165354330000000000
          Top = 219.212740000000000000
          Width = 634.961040000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[ADDRESS], '#1057#8218#1056#181#1056#187'. [PHONE]')
          ParentFont = False
          WordBreak = True
        end
        object Memo21: TfrxMemoView
          Left = 532.913730000000000000
          Top = 64.252010000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[KABINET], [PHONEKAB] ')
          ParentFont = False
          WordBreak = True
        end
        object Memo29: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[COMPANYNAME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 132.283550000000000000
          Top = 64.252010000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[RG_LABORANT]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 117.165354330000000000
          Top = 111.724490000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FIO_PAC]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 117.165354330000000000
          Top = 133.267718980000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DATE_ROJD]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 117.165354330000000000
          Top = 159.000002440000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SEX]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 532.913730000000000000
          Top = 133.417315510000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[KORENNOE]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 532.913730000000000000
          Top = 156.322837090000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[VID_OPLATA]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 532.913730000000000000
          Top = 179.149598980000000000
          Width = 219.212740000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[PROJIVAET]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 532.913654330000000000
          Top = 111.724490000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[NUMIB]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 117.165354330000000000
          Top = 275.905690000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[KEM_NAPRAVLEN]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 532.913385830000000000
          Top = 275.905690000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[VRACH_NAPRAVIL]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Align = baWidth
          Top = 21.677180000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[OTDELNAME]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 634.961040000000000000
        Width = 755.906000000000000000
        object Memo30: TfrxMemoView
          Left = 608.504330000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Width = 608.504330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[MEDOTRADESIGN]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 30.236240000000000000
        Top = 343.937230000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child2
        Stretched = True
        object Memo10: TfrxMemoView
          Top = 9.000000000000000000
          Width = 108.850391260000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#1105#1056#176#1056#1110#1056#1029#1056#1109#1056#183':')
          ParentFont = False
          WordBreak = True
        end
        object Memo42: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 117.165354330000000000
          Top = 9.000000000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[NAPRAV_DS]')
          ParentFont = False
        end
      end
      object Child2: TfrxChild
        Height = 30.236240000000000000
        Top = 396.850650000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child3
        Stretched = True
        object Memo11: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 9.000000000000000000
          Width = 109.642820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1057#1026#1056#1109#1057#8225#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 430.630180000000000000
          Top = 9.000000000000000000
          Width = 44.167520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#166#1056#181#1056#187#1057#1034':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 532.913385830000000000
          Top = 9.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TARGET]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 117.165354330000000000
          Top = 9.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SROCH]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child3: TfrxChild
        Height = 52.913420000000000000
        Top = 449.764070000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child4
        Stretched = True
        object Memo12: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 11.000000000000000000
          Width = 108.438330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1169#1056#177#1056#176#1056#1030#1056#1108#1056#176':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 117.165354330000000000
          Top = 11.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[NADBAVKA_TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Align = baWidth
          ShiftMode = smWhenOverlapped
          Top = 33.677180000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Child4: TfrxChild
        Height = 49.133890000000000000
        Top = 525.354670000000000000
        Width = 755.906000000000000000
        object Memo13: TfrxMemoView
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1032#1057#1027#1056#187#1057#1107#1056#1110#1056#176':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 117.165430000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Memo.UTF8 = (
            '[FC_NAME]')
        end
        object Memo15: TfrxMemoView
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1038#1056#1029#1056#1105#1056#1112#1056#1108#1056#1105':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 117.165430000000000000
          Top = 22.677180000000000000
          Width = 86.929155830000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[KOLVO_SN]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 427.086890000000000000
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#183#1056#176':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DOZA]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 608.504330000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1112#1056#8212#1056#1030)
          ParentFont = False
        end
      end
    end
  end
  object odsVvodRFP: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'RADIO_VVOD_RFP'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 491
  end
  object dsVvodRFP: TDataSource
    DataSet = odsVvodRFP
    Left = 1194
    Top = 491
  end
  object frAgreeProc: TfrxReport
    Version = '4.9.46'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41076.610402812500000000
    ReportOptions.LastChange = 41076.663123831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frAgreeProcGetValue
    Left = 256
    Top = 313
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 661.417750000000000000
        Top = 18.897650000000000000
        Width = 521.575140000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 521.575140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#152#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#1109#1056#181' '#1057#1027#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1105#1056#181' '#1056#1111#1056#176#1057#8224#1056#1105#1056#181#1056#1029#1057#8218#1056#176 +
              ' '#1056#1029#1056#176' '#1056#187#1057#1107#1057#8225#1056#181#1056#1030#1057#1107#1057#1035' '#1056#1169#1056#1105#1056#176#1056#1110#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1057#1107#1057#1035' '#1056#1111#1057#1026#1056#1109#1057#8224#1056#181#1056#1169 +
              #1057#1107#1057#1026#1057#1107' ('#1056#1105#1057#1027#1057#1027#1056#187#1056#181#1056#1169#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181') "____"___________________ 20__' +
              ' '#1056#1110'.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 41.574830000000000000
          Width = 521.575140000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '   '#1056#1116#1056#176#1057#1027#1057#8218#1056#1109#1057#1039#1057#8240#1056#181#1056#181' '#1056#1169#1056#1109#1056#177#1057#1026#1056#1109#1056#1030#1056#1109#1056#187#1057#1034#1056#1029#1056#1109#1056#181' '#1057#1027#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1105#1056#181' ' +
              #1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1109' '#1056#1030' '#1057#1027#1056#1109#1056#1109#1057#8218#1056#1030#1056#181#1057#8218#1057#1027#1057#8218#1056#1030#1056#1105#1056#1105' '#1057#1027#1056#1109' '#1057#1027#1057#8218'. 30, ' +
              '31, 32, 33 '#1056#1115#1057#1027#1056#1029#1056#1109#1056#1030' '#1056#183#1056#176#1056#1108#1056#1109#1056#1029#1056#1109#1056#1169#1056#176#1057#8218#1056#181#1056#187#1057#1034#1057#1027#1057#8218#1056#1030#1056#176' '#1056#160#1056#164' '#1056#1109#1056#177 +
              ' '#1056#1109#1057#8230#1057#1026#1056#176#1056#1029#1056#181' '#1056#183#1056#1169#1056#1109#1057#1026#1056#1109#1056#1030#1057#1034#1057#1039' '#1056#1110#1057#1026#1056#176#1056#182#1056#1169#1056#176#1056#1029' '#1056#1109#1057#8218' 22 '#1056#1105#1057#1035#1056#1029#1057#1039' 1' +
              '993 '#1056#1110'. '#1074#8222#8211' 5487-1.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 94.488250000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '1. '#1056#1114#1056#1029#1056#181' ('#1056#164'.'#1056#152'.'#1056#1115'. '#1056#1111#1056#176#1057#8224#1056#1105#1056#181#1056#1029#1057#8218#1056#176' '#1056#1105#1056#187#1056#1105' '#1056#181#1056#1110#1056#1109' '#1056#183#1056#176#1056#1108#1056#1109#1056#1029#1056#1029 +
              #1056#1109#1056#1110#1056#1109' '#1056#1111#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1057#8218#1056#181#1056#187#1057#1039') [PACFIO]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 117.165430000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#152#1057#1027#1057#8218#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#177#1056#1109#1056#187#1056#181#1056#183#1056#1029#1056#1105' ('#1056#176#1056#1112#1056#177#1057#1107#1056#187#1056#176#1057#8218#1056#1109#1057#1026#1056#1029#1056#176#1057#1039' '#1056#1108#1056#176#1057#1026#1057#8218 +
              #1056#176') '#1074#8222#8211' [NUMIB]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Top = 136.063080000000000000
          Width = 521.575140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1057#1026#1056#176#1056#183#1057#1033#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1057#8249' '#1056#1105' '#1056#1111#1056#1109#1056#1029#1057#1039#1057#8218#1056#1029#1057#8249' '#1057#1027#1057#1107#1057#8218#1057#1034' '#1056#1112#1056#1109#1056#181#1056#1110#1056#1109' '#1056#183#1056#176#1056 +
              #177#1056#1109#1056#187#1056#181#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1056#1105' '#1056#1109#1056#1111#1056#176#1057#1027#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105', '#1057#1027#1056#1030#1057#1039#1056#183#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1057#1027' '#1056 +
              #181#1056#1110#1056#1109' '#1056#1169#1056#176#1056#187#1057#1034#1056#1029#1056#181#1056#8470#1057#8364#1056#1105#1056#1112' '#1057#1026#1056#176#1056#183#1056#1030#1056#1105#1057#8218#1056#1105#1056#181#1056#1112'.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Top = 177.637910000000000000
          Width = 521.575140000000000000
          Height = 52.913420000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '2. '#1056#1031' '#1056#1111#1056#1109#1056#1029#1056#1105#1056#1112#1056#176#1057#1035' '#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#183#1056#1029#1056#176#1057#1035' '#1056#1029#1056#181#1056#1109#1056#177#1057#8230#1056#1109#1056#1169#1056#1105#1056#1112#1056#1109#1057#1027#1057#8218#1057 +
              #1034' '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1057#1027#1056#187#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1057#8230' '#1056#1169#1056#1105#1056#176#1056#1110#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105#1057#8225#1056#181 +
              #1057#1027#1056#1108#1056#1105#1057#8230' '#1056#1105#1056#187#1056#1105' '#1056#187#1056#181#1057#8225#1056#181#1056#177#1056#1029#1056#1109'-'#1056#1169#1056#1105#1056#176#1056#1110#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1057#8230' '#1056#1111 +
              #1057#1026#1056#1109#1057#8224#1056#181#1056#1169#1057#1107#1057#1026' '#1057#1027' '#1056#1105#1057#1027#1056#1111#1056#1109#1056#187#1057#1034#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181#1056#1112' '#1056#187#1057#1107#1057#8225#1056#181#1056#1030#1057#8249#1057#8230' '#1056#1112 +
              #1056#181#1057#8218#1056#1109#1056#1169#1056#1109#1056#1030': [METODS]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Top = 234.330860000000000000
          Width = 521.575140000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '3. '#1056#1114#1056#1029#1056#181' '#1057#1026#1056#176#1056#183#1057#1033#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1057#8249' '#1056#1105' '#1056#1111#1056#1109#1056#1029#1057#1039#1057#8218#1056#1029#1057#8249' '#1057#1026#1056#1105#1057#1027#1056#1108', '#1056#1030#1056#1109#1056 +
              #183#1056#1112#1056#1109#1056#182#1056#1029#1057#8249#1056#181' '#1056#1109#1057#1027#1056#187#1056#1109#1056#182#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1105' '#1056#1111#1056#1109#1057#1027#1056#187#1056#181#1056#1169#1057#1027#1057#8218#1056#1030#1056#1105#1057#1039' '#1056#1105#1057 +
              #1027#1057#1027#1056#187#1056#181#1056#1169#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039'('#1056#1105#1056#8470'), '#1056#1108#1056#1109#1057#8218#1056#1109#1057#1026#1057#8249#1056#181' '#1056#1112#1056#1109#1056#1110#1057#1107#1057#8218' '#1056#1111#1056#1109#1057#8218#1057#1026#1056 +
              #181#1056#177#1056#1109#1056#1030#1056#176#1057#8218#1057#1034' '#1056#1169#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#8249#1057#8230' '#1056#1030#1056#1112#1056#181#1057#8364#1056#176#1057#8218#1056#181#1056#187#1057#1034#1057#1027#1057 +
              #8218#1056#1030' '#1056#1105#1056#187#1056#1105' '#1056#187#1056#181#1057#8225#1056#181#1056#1029#1056#1105#1057#1039'.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Top = 287.244280000000000000
          Width = 521.575140000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '4. '#1056#1031' '#1057#1107#1056#1111#1056#1109#1056#187#1056#1029#1056#1109#1056#1112#1056#1109#1057#8225#1056#1105#1056#1030#1056#176#1057#1035' '#1056#1030#1057#1026#1056#176#1057#8225#1056#181#1056#8470', '#1056#1105#1056#1112#1056#181#1057#1035#1057#8240#1056#1105#1057#8230' '#1057#1027 +
              #1056#1109#1056#1109#1057#8218#1056#1030#1056#181#1057#8218#1057#1027#1057#8218#1056#1030#1057#1107#1057#1035#1057#8240#1057#1107#1057#1035' '#1056#1111#1056#1109#1056#1169#1056#1110#1056#1109#1057#8218#1056#1109#1056#1030#1056#1108#1057#1107' '#1056#1105' '#1057#1027#1056#181#1057#1026#1057#8218#1056#1105#1057 +
              #8222#1056#1105#1056#1108#1056#176#1057#8218', '#1056#1030#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1057#1039#1057#8218#1057#1034' '#1057#1107#1056#1108#1056#176#1056#183#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1056#1111#1057#1026#1056#1109#1057#8224#1056#181#1056#1169#1057#1107#1057 +
              #1026#1057#8249', '#1056#176' '#1056#1030' '#1057#1027#1056#187#1057#1107#1057#8225#1056#176#1056#181' '#1056#1030#1056#1109#1056#183#1056#1029#1056#1105#1056#1108#1056#1029#1056#1109#1056#1030#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1109#1057#1027#1056#187#1056#1109#1056#182#1056#1029#1056 +
              #181#1056#1029#1056#1105#1056#8470' '#1056#1109#1057#1027#1057#1107#1057#8240#1056#181#1057#1027#1057#8218#1056#1030#1056#1105#1057#8218#1057#1034' '#1056#1029#1056#181#1056#1109#1056#177#1057#8230#1056#1109#1056#1169#1056#1105#1056#1112#1057#8249#1056#181' '#1056#1112#1056#181#1056#1169#1056#1105#1057#8224 +
              #1056#1105#1056#1029#1057#1027#1056#1108#1056#1105#1056#181' '#1056#1169#1056#181#1056#8470#1057#1027#1057#8218#1056#1030#1056#1105#1057#1039' '#1056#1169#1056#187#1057#1039' '#1057#1107#1056#187#1057#1107#1057#8225#1057#8364#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1112#1056#1109#1056#181#1056#1110 +
              #1056#1109' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#1109#1057#1039#1056#1029#1056#1105#1057#1039'.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 355.275820000000000000
          Width = 521.575140000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1038#1056#1109#1056#1169#1056#181#1057#1026#1056#182#1056#176#1056#1029#1056#1105#1056#181' '#1056#1029#1056#176#1057#1027#1057#8218#1056#1109#1057#1039#1057#8240#1056#181#1056#1110#1056#1109' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176' '#1056#1112#1056 +
              #1029#1056#1109#1057#1035' '#1056#1111#1057#1026#1056#1109#1057#8225#1056#1105#1057#8218#1056#176#1056#1029#1056#1109', '#1057#1026#1056#176#1056#183#1057#1033#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1056#1109' '#1056#1112#1056#1029#1056#181' '#1056#1030#1057#1026#1056#176#1057#8225#1056#1109 +
              #1056#1112' '#1056#1105' '#1056#1111#1056#1109#1056#187#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034#1057#1035' '#1056#1112#1056#1029#1056#181' '#1056#1111#1056#1109#1056#1029#1057#1039#1057#8218#1056#1029#1056#1109', '#1057#8225#1057#8218#1056#1109' '#1057#1039' '#1056#1105' '#1057#1107#1056 +
              #1169#1056#1109#1057#1027#1057#8218#1056#1109#1056#1030#1056#181#1057#1026#1057#1039#1057#1035' '#1057#1027#1056#1030#1056#1109#1056#181#1056#8470' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034#1057#1035'.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Top = 396.850650000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1111#1056#176#1057#8224#1056#1105#1056#181#1056#1029#1057#8218#1056#176' /____________________//[PACFIO]/')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Top = 419.527830000000000000
          Width = 521.575140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1115#1057#8218' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1057#1107#1056#1108#1056#176#1056#183#1056#176#1056#1029#1056#1029#1057#8249#1057#8230' '#1056#1030' '#1056#1111'. 2 '#1056#1105#1057#1027#1057#1027#1056#187#1056#181 +
              #1056#1169#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#8470' '#1056#1109#1057#8218#1056#1108#1056#176#1056#183#1057#8249#1056#1030#1056#176#1057#1035#1057#1027#1057#1034', '#1057#8225#1057#8218#1056#1109' '#1056#1105' '#1057#1107#1056#1169#1056#1109#1057#1027#1057#8218#1056#1109#1056#1030#1056 +
              #181#1057#1026#1057#1039#1057#1035' '#1057#1027#1056#1030#1056#1109#1056#181#1056#8470' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034#1057#1035'.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Top = 461.102660000000000000
          Width = 521.575140000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1114#1056#1029#1056#181' '#1057#1026#1056#176#1056#183#1057#1033#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1057#8249' '#1056#1030#1056#1109#1056#183#1056#1112#1056#1109#1056#182#1056#1029#1057#8249#1056#181' '#1056#1111#1056#1109#1057#1027#1056#187#1056#181#1056#1169#1057#1027#1057#8218#1056 +
              #1030#1056#1105#1057#1039' '#1056#1109#1057#8218#1056#1108#1056#176#1056#183#1056#176' '#1056#1109#1057#8218' '#1056#1105#1057#1027#1057#1027#1056#187#1056#181#1056#1169#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039', '#1056#176' '#1056#1105#1056#1112#1056#181#1056#1029#1056#1029#1056 +
              #1109' '#1056#1111#1056#1109#1056#183#1056#1169#1056#1029#1057#1039#1057#1039' '#1056#1105#1056#187#1056#1105' '#1056#1029#1056#181#1056#1111#1057#1026#1056#176#1056#1030#1056#1105#1056#187#1057#1034#1056#1029#1056#176#1057#1039' '#1056#1169#1056#1105#1056#176#1056#1110#1056#1029#1056#1109#1057#1027#1057 +
              #8218#1056#1105#1056#1108#1056#176' '#1056#183#1056#176#1056#177#1056#1109#1056#187#1056#181#1056#1030#1056#176#1056#1029#1056#1105#1057#1039', '#1056#1029#1056#181#1057#8218#1057#1026#1057#1107#1056#1169#1056#1109#1057#1027#1056#1111#1056#1109#1057#1027#1056#1109#1056#177#1056#1029#1056#1109#1057#1027 +
              #1057#8218#1057#1034', '#1057#1027#1056#1112#1056#181#1057#1026#1057#8218#1057#1034'.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Top = 498.897960000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1111#1056#176#1057#8224#1056#1105#1056#181#1056#1029#1057#8218#1056#176' ('#1056#1105#1056#187#1056#1105' '#1056#181#1056#1110#1056#1109' '#1056#183#1056#176#1056#1108#1056#1109#1056#1029#1056#1029#1056#1109#1056#1110#1056 +
              #1109' '#1056#1111#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1057#8218#1056#181#1056#187#1057#1039')')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          Top = 532.913730000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#164'.'#1056#152'.'#1056#1115'. _______________________________/______________________' +
              '________/')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          Top = 563.149970000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1030#1057#1026#1056#176#1057#8225#1056#176' ____________________________/_________' +
              '_________________/')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          Top = 593.386210000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1057#8218#1057#1026#1056#181#1057#8218#1057#1034#1056#181#1056#1110#1056#1109' '#1056#187#1056#1105#1057#8224#1056#176' _______________________' +
              '/________________________/')
          ParentFont = False
        end
      end
    end
  end
  object odsTypeR: TOracleDataSet
    SQL.Strings = (
      'SELECT FK_ID, FC_NAME, FN_ORDER '
      '  FROM asu.TSMID'
      
        ' WHERE FK_OWNER = (SELECT FK_ID FROM asu.TSMID WHERE FC_SYNONIM ' +
        '= '#39'RADIO_TYPE'#39')'
      '   AND FL_SHOWPRINT = 1'
      '   AND FL_DEL = 0'
      'ORDER BY FN_ORDER')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464E5F4F52444552010000000000}
    Session = frmMain.os
    Left = 1162
    Top = 539
  end
  object dsTypeR: TDataSource
    DataSet = odsTypeR
    Left = 1194
    Top = 539
  end
end

object FrmSize: TFrmSize
  Left = 358
  Top = 284
  BorderIcons = [biSystemMenu]
  Caption = #1042#1088#1091#1095#1085#1091#1102
  ClientHeight = 92
  ClientWidth = 289
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 283
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 9
      Top = 9
      Caption = #1057#1090#1086#1083#1073#1094#1099':'
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Black'
      Transparent = True
    end
    object seColumns: TcxSpinEdit
      Left = 75
      Top = 9
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1086#1083#1073#1094#1086#1074
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Office2007Green'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
      StyleHot.LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 1
      Width = 66
    end
    object cxLabel2: TcxLabel
      Left = 148
      Top = 9
      Caption = #1057#1090#1088#1086#1082#1080':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object seRows: TcxSpinEdit
      Left = 203
      Top = 9
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Office2007Green'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
      StyleHot.LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 3
      Width = 67
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 283
    Height = 42
    Margins.Top = 0
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object bApplyScreen: TcxButton
      Left = 115
      Top = 7
      Width = 75
      Height = 25
      Action = actOK
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object cxButton1: TcxButton
      Left = 195
      Top = 7
      Width = 75
      Height = 25
      Action = actCancel
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
    end
  end
  object al: TActionList
    Left = 40
    Top = 48
    object actOK: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1088#1091#1095#1085#1091#1102' '#1088#1072#1079#1073#1080#1074#1082#1091' '#1101#1082#1088#1072#1085#1072
      ShortCut = 113
      OnExecute = actOKExecute
    end
    object actCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ShortCut = 27
      OnExecute = actCancelExecute
    end
  end
end

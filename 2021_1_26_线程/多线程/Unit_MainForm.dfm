object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 343
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 19
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtnStart: TButton
    Left = 72
    Top = 19
    Width = 75
    Height = 25
    Caption = #24320#22987#36816#31639
    TabOrder = 0
    OnClick = BtnStartClick
  end
  object BtnReset: TButton
    Left = 161
    Top = 19
    Width = 75
    Height = 25
    Caption = #36824#21407
    TabOrder = 1
    OnClick = BtnResetClick
  end
  object grp1: TGroupBox
    Left = 24
    Top = 50
    Width = 257
    Height = 95
    Caption = #22810#32447#31243#25511#21046
    TabOrder = 2
    object lbl2: TLabel
      Left = 24
      Top = 16
      Width = 26
      Height = 60
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnTStart1: TButton
      Left = 72
      Top = 26
      Width = 75
      Height = 25
      Caption = #24320#22987
      TabOrder = 0
      OnClick = BtnTStart1Click
    end
    object BtnSuspend: TButton
      Left = 72
      Top = 57
      Width = 75
      Height = 25
      Caption = #26242#20572
      TabOrder = 1
      OnClick = BtnSuspendClick
    end
    object BtnContinue: TButton
      Left = 163
      Top = 26
      Width = 75
      Height = 25
      Caption = #32487#32493
      TabOrder = 2
      OnClick = BtnContinueClick
    end
    object BtnStop: TButton
      Left = 163
      Top = 57
      Width = 75
      Height = 25
      Caption = #20572#27490
      TabOrder = 3
      OnClick = BtnStopClick
    end
  end
end

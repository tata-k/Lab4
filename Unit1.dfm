object Form1: TForm1
  Left = 320
  Top = 243
  Width = 341
  Height = 256
  Align = alCustom
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 325
    Height = 218
    ActivePage = TabSheet2
    Align = alClient
    HotTrack = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1090#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1072
      object Button1: TButton
        Left = 32
        Top = 40
        Width = 249
        Height = 105
        Caption = #1042#1099#1079#1074#1072#1090#1100' DLL-'#1073#1080#1073#1083#1080#1086#1090#1077#1082#1091
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1072#1103' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1072
      ImageIndex = 1
      object Button2: TButton
        Left = 40
        Top = 32
        Width = 233
        Height = 121
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' DLL-'#1073#1080#1073#1083#1080#1086#1090#1077#1082#1091
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
end

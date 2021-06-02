object frmPesqGen: TfrmPesqGen
  Left = 455
  Top = 216
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Pesquisa'
  ClientHeight = 192
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 467
    Height = 192
    Align = alClient
    Caption = '|GroupBox1|'
    TabOrder = 0
    object edtPesquisar: TEdit
      Left = 9
      Top = 24
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object dbGridPesquisar: TDBGrid
      Left = 9
      Top = 56
      Width = 448
      Height = 129
      DataSource = dtsPesquisar
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object dtsPesquisar: TDataSource
    Left = 376
    Top = 24
  end
end

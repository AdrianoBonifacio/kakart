inherited frmLembretes: TfrmLembretes
  Left = 346
  Top = 117
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Lembretes'
  ClientHeight = 374
  ClientWidth = 843
  Font.Height = -19
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  inherited ToolBar1: TToolBar
    Width = 843
    TabOrder = 3
    inherited ToolButton3: TToolButton
      Visible = False
    end
    inherited tbtnImprimir: TToolButton
      Visible = False
    end
    inherited tbtnPesquisar: TToolButton
      Visible = False
    end
    inherited ToolButton2: TToolButton
      Visible = False
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 346
    Width = 843
    TabOrder = 4
  end
  inherited grpbCadGen: TGroupBox
    Width = 843
    Height = 317
    Caption = ' Ajustes '
    Enabled = True
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Arial'
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 335
      Top = 39
      Width = 44
      Height = 22
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 499
      Top = 39
      Width = 45
      Height = 22
      Caption = 'Hora:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object dbedtDtLemb: TDBEdit [3]
    Left = 383
    Top = 66
    Width = 103
    Height = 32
    DataField = 'DATA_LEMBRETE'
    DataSource = dtsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 0
  end
  object dbedtHrLemb: TDBEdit [4]
    Left = 546
    Top = 66
    Width = 53
    Height = 32
    DataField = 'HORA_LEMBRETE'
    DataSource = dtsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 1
  end
  object MonthCalendar1: TMonthCalendar [5]
    Left = 19
    Top = 67
    Width = 281
    Height = 263
    AutoSize = True
    Date = 42195.824463819440000000
    TabOrder = 6
    OnClick = MonthCalendar1Click
  end
  object GroupBox1: TGroupBox [6]
    Left = 315
    Top = 129
    Width = 521
    Height = 200
    Caption = ' Mensagem '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 12
      Top = 27
      Width = 501
      Height = 158
      DataField = 'DESC_LEMBRETE'
      DataSource = dtsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited dtsCadastro: TDataSource
    DataSet = Dm.CdsLembretes
  end
  inherited ppRepCadastro: TppReport
    DataPipelineName = 'ppDBPpCadastro'
  end
end

inherited frmCliente: TfrmCliente
  Left = 274
  Top = 141
  Width = 954
  Height = 439
  Caption = 'Clientes'
  Font.Height = -16
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 20
  inherited ToolBar1: TToolBar
    Width = 946
    inherited ToolButton3: TToolButton
      Visible = False
    end
    inherited tbtnImprimir: TToolButton
      Visible = False
    end
    inherited tbtnPesquisar: TToolButton
      OnClick = tbtnPesquisarClick
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 377
    Width = 946
  end
  inherited grpbCadGen: TGroupBox
    Width = 946
    Height = 348
    Caption = ' Informa'#231#245'es '
    Font.Height = -19
    ParentFont = False
    OnClick = FormCreate
    object Label1: TLabel
      Left = 720
      Top = 50
      Width = 66
      Height = 24
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 15
      Top = 50
      Width = 57
      Height = 24
      Caption = 'Nome:'
      FocusControl = dbedtNome
    end
    object Label3: TLabel
      Left = 15
      Top = 100
      Width = 83
      Height = 24
      Caption = 'Rua (Av.):'
      FocusControl = dbedtLogradouro
    end
    object Label4: TLabel
      Left = 717
      Top = 100
      Width = 35
      Height = 24
      Caption = 'No.:'
      FocusControl = dbedtNumero
    end
    object dbedtCodCli: TDBText
      Left = 790
      Top = 51
      Width = 89
      Height = 33
      DataField = 'COD_CLI'
      DataSource = dtsCadastro
    end
    object Label5: TLabel
      Left = 15
      Top = 151
      Width = 124
      Height = 24
      Caption = 'Complemento:'
      FocusControl = dbedtComplemento
    end
    object Label6: TLabel
      Left = 382
      Top = 152
      Width = 54
      Height = 24
      Caption = 'Bairro:'
      FocusControl = dbedtBairro
    end
    object Label7: TLabel
      Left = 15
      Top = 202
      Width = 65
      Height = 24
      Caption = 'Cidade:'
      FocusControl = dbedtCidade
    end
    object Label8: TLabel
      Left = 382
      Top = 202
      Width = 30
      Height = 24
      Caption = 'UF:'
      FocusControl = dbedtUf
    end
    object Label9: TLabel
      Left = 15
      Top = 256
      Width = 80
      Height = 24
      Caption = 'Telefone:'
      FocusControl = dbedtTelefone
    end
    object Label10: TLabel
      Left = 383
      Top = 256
      Width = 64
      Height = 24
      Caption = 'Celular:'
      FocusControl = dbedtCelular
    end
    object Label11: TLabel
      Left = 465
      Top = 202
      Width = 43
      Height = 24
      Caption = 'CEP:'
      FocusControl = dbedtCep
    end
    object Label12: TLabel
      Left = 15
      Top = 304
      Width = 52
      Height = 24
      Caption = 'Email:'
    end
    object Label13: TLabel
      Left = 512
      Top = 50
      Width = 95
      Height = 24
      Caption = 'Data Nasc.:'
    end
    object dbedtNome: TDBEdit
      Left = 75
      Top = 49
      Width = 422
      Height = 32
      CharCase = ecUpperCase
      DataField = 'NOME_CLI'
      DataSource = dtsCadastro
      TabOrder = 0
    end
    object dbedtLogradouro: TDBEdit
      Left = 103
      Top = 99
      Width = 604
      Height = 32
      CharCase = ecUpperCase
      DataField = 'LOGRADOURO_CLI'
      DataSource = dtsCadastro
      TabOrder = 2
    end
    object dbedtNumero: TDBEdit
      Left = 755
      Top = 99
      Width = 62
      Height = 32
      DataField = 'NUM_CLI'
      DataSource = dtsCadastro
      TabOrder = 3
    end
    object dbedtComplemento: TDBEdit
      Left = 141
      Top = 150
      Width = 235
      Height = 32
      CharCase = ecUpperCase
      DataField = 'COMPL_CLI'
      DataSource = dtsCadastro
      TabOrder = 4
    end
    object dbedtBairro: TDBEdit
      Left = 439
      Top = 150
      Width = 269
      Height = 32
      CharCase = ecUpperCase
      DataField = 'BAIRRO_CLI'
      DataSource = dtsCadastro
      TabOrder = 5
    end
    object dbedtCidade: TDBEdit
      Left = 83
      Top = 201
      Width = 295
      Height = 32
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = dtsCadastro
      TabOrder = 6
    end
    object dbedtUf: TDBEdit
      Left = 416
      Top = 200
      Width = 44
      Height = 32
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = dtsCadastro
      TabOrder = 7
    end
    object dbedtTelefone: TDBEdit
      Left = 98
      Top = 254
      Width = 280
      Height = 32
      DataField = 'TEL_CLI'
      DataSource = dtsCadastro
      TabOrder = 9
    end
    object dbedtCelular: TDBEdit
      Left = 450
      Top = 254
      Width = 261
      Height = 32
      DataField = 'CEL_CLI'
      DataSource = dtsCadastro
      TabOrder = 10
    end
    object dbedtCep: TDBEdit
      Left = 511
      Top = 200
      Width = 199
      Height = 32
      DataField = 'CEP_CLI'
      DataSource = dtsCadastro
      TabOrder = 8
    end
    object dbedtEmail: TDBEdit
      Left = 70
      Top = 302
      Width = 308
      Height = 32
      CharCase = ecLowerCase
      DataField = 'EMAIL_CLI'
      DataSource = dtsCadastro
      TabOrder = 11
    end
    object dbedtDataNasc: TDBEdit
      Left = 608
      Top = 49
      Width = 105
      Height = 32
      DataField = 'NIVER_CLI'
      DataSource = dtsCadastro
      TabOrder = 1
    end
  end
  inherited dtsCadastro: TDataSource
    DataSet = Dm.CdsCliente
  end
  inherited ppRepCadastro: TppReport
    DataPipelineName = 'ppDBPpCadastro'
  end
end

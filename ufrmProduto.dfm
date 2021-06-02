inherited frmProduto: TfrmProduto
  Left = 382
  Top = 132
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Produtos'
  FormStyle = fsMDIForm
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
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
  inherited grpbCadGen: TGroupBox
    Caption = ' Informa'#231#245'es '
    Font.Height = -19
    ParentFont = False
    object Label1: TLabel
      Left = 420
      Top = 54
      Width = 66
      Height = 24
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 53
      Width = 57
      Height = 24
      Caption = 'Nome:'
      FocusControl = dbedtNomeProd
    end
    object Label3: TLabel
      Left = 16
      Top = 116
      Width = 135
      Height = 24
      Caption = 'Pre'#231'o de Custo:'
      FocusControl = dbedtCustoProd
    end
    object Label4: TLabel
      Left = 16
      Top = 179
      Width = 143
      Height = 24
      Caption = 'Pre'#231'o de Venda:'
      FocusControl = dbedtVendaProd
    end
    object Label5: TLabel
      Left = 16
      Top = 242
      Width = 103
      Height = 24
      Caption = 'Quantidade:'
      FocusControl = dbedtQuantProd
    end
    object dbtxtCodigo: TDBText
      Left = 490
      Top = 55
      Width = 98
      Height = 23
      DataField = 'COD_PROD'
      DataSource = dtsCadastro
    end
    object dbedtNomeProd: TDBEdit
      Left = 80
      Top = 51
      Width = 323
      Height = 32
      CharCase = ecUpperCase
      DataField = 'DESC_PROD'
      DataSource = dtsCadastro
      TabOrder = 0
    end
    object dbedtCustoProd: TDBEdit
      Left = 156
      Top = 115
      Width = 100
      Height = 32
      DataField = 'VLR_CUSTO'
      DataSource = dtsCadastro
      TabOrder = 1
    end
    object dbedtVendaProd: TDBEdit
      Left = 162
      Top = 177
      Width = 100
      Height = 32
      DataField = 'VLR_VENDA'
      DataSource = dtsCadastro
      TabOrder = 2
    end
    object dbedtQuantProd: TDBEdit
      Left = 123
      Top = 241
      Width = 86
      Height = 32
      DataField = 'QTD_PROD'
      DataSource = dtsCadastro
      TabOrder = 3
    end
  end
  inherited dtsCadastro: TDataSource
    DataSet = Dm.CdsProduto
  end
  inherited ppRepCadastro: TppReport
    DataPipelineName = 'ppDBPpCadastro'
  end
end

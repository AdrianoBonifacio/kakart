inherited frmVenda: TfrmVenda
  Left = 256
  Top = 76
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 512
  ClientWidth = 981
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 981
    inherited tbtnEditar: TToolButton
      Visible = False
    end
    inherited ToolButton1: TToolButton
      Visible = False
    end
    inherited tbtnSalvar: TToolButton
      Visible = False
    end
    inherited tbtnDeletar: TToolButton
      Visible = False
    end
    inherited ToolButton3: TToolButton
      Visible = False
    end
    inherited tbtnImprimir: TToolButton
      Visible = False
    end
    inherited ToolButton4: TToolButton
      Visible = False
    end
    inherited tbtnPesquisar: TToolButton
      Enabled = False
      OnClick = tbtnPesquisarClick
    end
  end
  inherited DBNavigator1: TDBNavigator
    Top = 484
    Width = 981
  end
  inherited grpbCadGen: TGroupBox
    Width = 981
    Height = 455
    Caption = ' Detalhes da Venda '
    Font.Height = -19
    ParentFont = False
    object spbConcVenda: TSpeedButton
      Left = 680
      Top = 167
      Width = 242
      Height = 63
      Caption = 'Concluir Venda'
      OnClick = spbConcVendaClick
    end
    object Label1: TLabel
      Left = 344
      Top = 422
      Width = 152
      Height = 24
      Caption = 'Valor da Venda = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblVlrVenda: TLabel
      Left = 508
      Top = 422
      Width = 63
      Height = 24
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spbDesconto: TSpeedButton
      Left = 896
      Top = 422
      Width = 23
      Height = 22
      Hint = 'Desconto'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = spbDescontoClick
    end
    object dbgrdProdutos: TDBGrid
      Left = 8
      Top = 24
      Width = 660
      Height = 206
      DataSource = dtsProduto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrdProdutosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PROD'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESC_PROD'
          Title.Caption = 'Produto'
          Width = 416
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_CUSTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VLR_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_PROD'
          Title.Alignment = taCenter
          Title.Caption = 'Em Estoque'
          Width = 130
          Visible = True
        end>
    end
    object dbgrdDetalhes: TDBGrid
      Left = 8
      Top = 237
      Width = 913
      Height = 169
      DataSource = dtsCadastro
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_DETALS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_VENDA_DET'
          Title.Caption = 'Venda No.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_PROD_DET'
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PROD_DET'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_CLI_DET'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'QTD_DET'
          Title.Caption = 'Quant.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT_DET'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOT_DET'
          Title.Caption = 'Valor Total'
          Visible = True
        end>
    end
    object edtQtdx: TEdit
      Left = 811
      Top = 126
      Width = 49
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'edtQtdx'
    end
    object rgPagamento: TRadioGroup
      Left = 680
      Top = 18
      Width = 242
      Height = 148
      Caption = ' Pagamento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Dinheiro'
        'Cart'#227'o D'#233'bito'
        'Cart'#227'o Cr'#233'dito')
      ParentFont = False
      TabOrder = 2
      OnClick = rgPagamentoClick
    end
  end
  inherited dtsCadastro: TDataSource
    DataSet = Dm.CdsVendaDet
  end
  inherited ppRepCadastro: TppReport
    DataPipelineName = 'ppDBPpCadastro'
  end
  object dtsProduto: TDataSource
    DataSet = Dm.CdsProduto
    Left = 288
    Top = 61
  end
  object DtsVenda: TDataSource
    DataSet = Dm.CdsVenda
    Left = 240
    Top = 117
  end
  object dtsVendaQuant: TDataSource
    DataSet = Dm.CdsVendaQuant
    Left = 352
    Top = 112
  end
  object dtsRegistro: TDataSource
    DataSet = Dm.CdsRegistro
    Left = 384
    Top = 205
  end
end

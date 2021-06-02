inherited frmPesqProduto: TfrmPesqProduto
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa Produto'
  Font.Height = -16
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 20
  inherited GroupBox1: TGroupBox
    Caption = '| Nome do Produto|'
    inherited edtPesquisar: TEdit
      Height = 28
      OnChange = edtPesquisarChange
    end
    inherited dbGridPesquisar: TDBGrid
      TitleFont.Height = -16
      OnDblClick = dbGridPesquisarDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PROD'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_PROD'
          Title.Caption = 'Produto'
          Width = 64
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'QTD_PROD'
          Visible = False
        end>
    end
  end
  inherited dtsPesquisar: TDataSource
    DataSet = Dm.CdsPesqProduto
  end
end

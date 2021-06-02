inherited frmPesquisa: TfrmPesquisa
  Left = 427
  Top = 199
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa Estoque'
  ClientHeight = 196
  ClientWidth = 624
  Font.Height = -16
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 20
  inherited GroupBox1: TGroupBox
    Width = 624
    Height = 196
    Caption = '| Nome do Produto |'
    inherited edtPesquisar: TEdit
      Height = 28
      OnChange = edtPesquisarChange
    end
    inherited dbGridPesquisar: TDBGrid
      Width = 600
      TitleFont.Height = -16
      OnDblClick = dbGridPesquisarDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PROD'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_PROD'
          Title.Caption = 'Nome do Produto'
          Width = 324
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
    DataSet = Dm.CdsPesqEstoque
  end
end

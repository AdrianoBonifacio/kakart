inherited frmPesqClientes: TfrmPesqClientes
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa de Clientes'
  Font.Height = -16
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 20
  inherited GroupBox1: TGroupBox
    Caption = '| Informe o nome |'
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
          FieldName = 'COD_CLI'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME_CLI'
          Title.Caption = 'Nome'
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUM_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COMPL_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BAIRRO_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TEL_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CEL_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CEP_CLI'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EMAIL_CLI'
          Visible = False
        end>
    end
  end
  inherited dtsPesquisar: TDataSource
    DataSet = Dm.CdsCliente
  end
end

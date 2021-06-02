inherited frmEstoque: TfrmEstoque
  Left = 292
  Top = 185
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Controle de Estoque'
  ClientWidth = 942
  Font.Height = -19
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 24
  inherited ToolBar1: TToolBar
    Width = 942
    inherited tbtnNovo: TToolButton
      Visible = False
    end
    inherited tbtnEditar: TToolButton
      Visible = False
    end
    inherited tbtnCancelar: TToolButton
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
    inherited tbtnPesquisar: TToolButton
      OnClick = tbtnPesquisarClick
    end
  end
  inherited DBNavigator1: TDBNavigator
    Width = 942
  end
  inherited grpbCadGen: TGroupBox
    Width = 942
    Caption = ' Estoque '
    object DBGrid1: TDBGrid
      Left = 2
      Top = 26
      Width = 938
      Height = 302
      Align = alClient
      DataSource = dtsCadastro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          Title.Caption = 'Nome'
          Width = 269
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_CUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o de Custo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o de Venda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_PROD'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Visible = True
        end>
    end
  end
  inherited dtsCadastro: TDataSource
    DataSet = Dm.CdsProduto
  end
  inherited ppRepCadastro: TppReport
    DataPipelineName = 'ppDBPpCadastro'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 15081
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6615
        mmLeft = 81492
        mmTop = 265
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 2116
        mmTop = 9525
        mmWidth = 13759
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 16404
        mmTop = 9525
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 100013
        mmTop = 9525
        mmWidth = 22490
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 14288
        mmWidth = 197380
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 7144
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_PROD'
        DataPipeline = ppDBPpCadastro
        DisplayFormat = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPpCadastro'
        mmHeight = 5027
        mmLeft = 2116
        mmTop = 1058
        mmWidth = 13759
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PROD'
        DataPipeline = ppDBPpCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpCadastro'
        mmHeight = 5027
        mmLeft = 16933
        mmTop = 1058
        mmWidth = 80963
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTD_PROD'
        DataPipeline = ppDBPpCadastro
        DisplayFormat = '#0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPpCadastro'
        mmHeight = 5027
        mmLeft = 99219
        mmTop = 1058
        mmWidth = 14552
        BandType = 4
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 13758
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Kak'#39'art - Moda Feminina Avenida Brasil, 248 - Santa Efigenia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 12700
        mmLeft = 73025
        mmTop = 265
        mmWidth = 37306
        BandType = 8
      end
    end
  end
  inherited ppDBPpCadastro: TppDBPipeline
    object ppDBPpCadastroppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_PROD'
      FieldName = 'COD_PROD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPpCadastroppField2: TppField
      FieldAlias = 'DESC_PROD'
      FieldName = 'DESC_PROD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object ppDBPpCadastroppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_CUSTO'
      FieldName = 'VLR_CUSTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPpCadastroppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_VENDA'
      FieldName = 'VLR_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPpCadastroppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTD_PROD'
      FieldName = 'QTD_PROD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
end

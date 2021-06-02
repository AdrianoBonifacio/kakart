object frmControleVendas: TfrmControleVendas
  Left = 264
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Vendas'
  ClientHeight = 326
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object GroupBox1: TGroupBox
    Left = 0
    Top = 15
    Width = 1010
    Height = 362
    Caption = ' Selecione a data da venda '
    TabOrder = 0
    object Label1: TLabel
      Left = 671
      Top = 281
      Width = 105
      Height = 24
      Caption = 'Total do Dia:'
    end
    object lblSaldo: TLabel
      Left = 778
      Top = 281
      Width = 63
      Height = 24
      Caption = 'R$ 0,00'
    end
    object spbRelatorio: TSpeedButton
      Left = 952
      Top = 281
      Width = 26
      Height = 23
      Hint = 'Gerar Relat'#243'rio'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = spbRelatorioClick
    end
    object MonthCalendarVendas: TMonthCalendar
      Left = 12
      Top = 35
      Width = 281
      Height = 263
      Date = 42745.438392303240000000
      TabOrder = 0
      OnClick = MonthCalendarVendasClick
      OnGetMonthInfo = MonthCalendarVendasGetMonthInfo
    end
    object DBGrid1: TDBGrid
      Left = 300
      Top = 34
      Width = 698
      Height = 243
      DataSource = dtsRegistros
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_REG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_DETAILS_REG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_PROD_REG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_CLI_REG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_VENDA_REG'
          Title.Caption = 'Venda'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESC_PROD_REG'
          Title.Caption = 'Produto'
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_UNIT_REG'
          Title.Caption = 'Unidade'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD_REG'
          Title.Caption = 'Quant.'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOT_REG'
          Title.Caption = 'Total'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_REG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPO_PAGAMENTO'
          Title.Caption = 'Pagamento'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO_VENDA'
          Title.Caption = 'Valor Real'
          Visible = True
        end>
    end
  end
  object dtsRegistros: TDataSource
    DataSet = Dm.CdsMov
    OnStateChange = dtsRegistrosStateChange
    OnUpdateData = dtsRegistrosUpdateData
    Left = 448
    Top = 112
  end
  object dtsDiasMov: TDataSource
    DataSet = Dm.CdsDiasMov
    Left = 320
    Top = 144
  end
  object ppDBPpVendaDia: TppDBPipeline
    DataSource = dtsRegistros
    UserName = 'DBPpVendaDia'
    Left = 576
    Top = 138
    object ppDBPpVendaDiappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_REG'
      FieldName = 'COD_REG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPpVendaDiappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_DETAILS_REG'
      FieldName = 'COD_DETAILS_REG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPpVendaDiappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_PROD_REG'
      FieldName = 'COD_PROD_REG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPpVendaDiappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLI_REG'
      FieldName = 'COD_CLI_REG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPpVendaDiappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTD_REG'
      FieldName = 'QTD_REG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPpVendaDiappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_UNIT_REG'
      FieldName = 'VLR_UNIT_REG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPpVendaDiappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_TOT_REG'
      FieldName = 'VLR_TOT_REG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPpVendaDiappField8: TppField
      FieldAlias = 'DESC_PROD_REG'
      FieldName = 'DESC_PROD_REG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppDBPpVendaDiappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA_REG'
      FieldName = 'COD_VENDA_REG'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPpVendaDiappField10: TppField
      FieldAlias = 'DATA_REG'
      FieldName = 'DATA_REG'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPpVendaDiappField11: TppField
      FieldAlias = 'TIPO_PAGAMENTO'
      FieldName = 'TIPO_PAGAMENTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPpVendaDiappField12: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 10
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
  end
  object ppRepCadastro: TppReport
    AutoStop = False
    DataPipeline = ppDBPpVendaDia
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 608
    Top = 138
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPpVendaDia'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object pplTitulo: TppLabel
        UserName = 'lTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Venda(s) do dia '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 69586
        mmTop = 1588
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_REG'
        DataPipeline = ppDBPpVendaDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 100806
        mmTop = 1588
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
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
        mmLeft = 17198
        mmTop = 12700
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 85990
        mmTop = 12700
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 109538
        mmTop = 12700
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 164836
        mmTop = 12700
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 529
        mmTop = 12700
        mmWidth = 12171
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
        mmHeight = 1058
        mmLeft = 68792
        mmTop = 6350
        mmWidth = 54504
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17463
        mmWidth = 197115
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 12700
        mmWidth = 197115
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Real'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 141288
        mmTop = 12700
        mmWidth = 19315
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PROD_REG'
        DataPipeline = ppDBPpVendaDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 17727
        mmTop = 1323
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTD_REG'
        DataPipeline = ppDBPpVendaDia
        DisplayFormat = '#0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 88371
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_TOT_REG'
        DataPipeline = ppDBPpVendaDia
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 115094
        mmTop = 1323
        mmWidth = 13228
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPO_PAGAMENTO'
        DataPipeline = ppDBPpVendaDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 168540
        mmTop = 1323
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA_REG'
        DataPipeline = ppDBPpVendaDia
        DisplayFormat = '#0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = ppDBPpVendaDia
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPpVendaDia'
        mmHeight = 5027
        mmLeft = 141552
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
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
        mmLeft = 75671
        mmTop = 1588
        mmWidth = 37306
        BandType = 8
      end
    end
  end
end

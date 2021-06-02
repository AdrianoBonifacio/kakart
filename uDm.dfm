object Dm: TDm
  OldCreateOrder = False
  Left = 256
  Top = 100
  Height = 521
  Width = 1026
  object SQLConnection: TSQLConnection
    ConnectionName = 'Kakart'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Users\fullo\Documents\Sistemas\Desenvolvimento\Proje' +
        'tos\Kakart\BD\KAKART.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 448
    Top = 8
  end
  object SqlProduto: TSQLDataSet
    CommandText = 'select * from PRODUTO'#13#10'order by COD_PROD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 104
  end
  object DspProduto: TDataSetProvider
    DataSet = SqlProduto
    Options = [poAllowCommandText]
    Left = 32
    Top = 156
  end
  object CdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProduto'
    Left = 32
    Top = 209
    object CdsProdutoCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsProdutoDESC_PROD: TStringField
      FieldName = 'DESC_PROD'
      Size = 30
    end
    object CdsProdutoVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object CdsProdutoVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
      DisplayFormat = '#,##0.00'
    end
    object CdsProdutoQTD_PROD: TFloatField
      FieldName = 'QTD_PROD'
      DisplayFormat = '#0000'
    end
  end
  object SQLGeraID: TSQLDataSet
    CommandText = 'select * from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 486
    Top = 104
  end
  object DSPGeraID: TDataSetProvider
    DataSet = SQLGeraID
    Options = [poAllowCommandText]
    Left = 486
    Top = 152
  end
  object CdsGeraID: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSPGeraID'
    Left = 486
    Top = 208
    object SmallintField1: TSmallintField
      FieldName = 'ID'
    end
  end
  object CdsPesqEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqEstoque'
    Left = 103
    Top = 209
    object CdsPesqEstoqueCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsPesqEstoqueDESC_PROD: TStringField
      FieldName = 'DESC_PROD'
      Size = 30
    end
    object CdsPesqEstoqueVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
    end
    object CdsPesqEstoqueVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
    object CdsPesqEstoqueQTD_PROD: TFloatField
      FieldName = 'QTD_PROD'
    end
  end
  object DspPesqEstoque: TDataSetProvider
    DataSet = SqlPesqEstoque
    Options = [poAllowCommandText]
    Left = 103
    Top = 156
  end
  object SqlPesqEstoque: TSQLDataSet
    CommandText = 'select *  from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 103
    Top = 104
  end
  object SqlCliente: TSQLDataSet
    CommandText = 'select  * from CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 172
    Top = 104
  end
  object DspCliente: TDataSetProvider
    DataSet = SqlCliente
    Options = [poAllowCommandText]
    Left = 172
    Top = 152
  end
  object CdsCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCliente'
    Left = 172
    Top = 208
    object CdsClienteCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsClienteNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 50
    end
    object CdsClienteLOGRADOURO_CLI: TStringField
      FieldName = 'LOGRADOURO_CLI'
      Size = 30
    end
    object CdsClienteNUM_CLI: TSmallintField
      FieldName = 'NUM_CLI'
    end
    object CdsClienteCOMPL_CLI: TStringField
      FieldName = 'COMPL_CLI'
      Size = 30
    end
    object CdsClienteBAIRRO_CLI: TStringField
      FieldName = 'BAIRRO_CLI'
      Size = 50
    end
    object CdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object CdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsClienteTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      Size = 15
    end
    object CdsClienteCEL_CLI: TStringField
      FieldName = 'CEL_CLI'
      Size = 15
    end
    object CdsClienteCEP_CLI: TStringField
      FieldName = 'CEP_CLI'
      FixedChar = True
      Size = 11
    end
    object CdsClienteEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 50
    end
    object CdsClienteFLAG_NIVER: TIntegerField
      FieldName = 'FLAG_NIVER'
    end
    object CdsClienteNIVER_CLI: TDateField
      FieldName = 'NIVER_CLI'
    end
  end
  object SqlVendaDet: TSQLDataSet
    CommandText = 'select  * from DETALHES_VENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 306
    Top = 104
  end
  object DspVendaDet: TDataSetProvider
    DataSet = SqlVendaDet
    Options = [poAllowCommandText]
    Left = 306
    Top = 152
  end
  object CdsVendaDet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVendaDet'
    Left = 306
    Top = 208
    object CdsVendaDetCOD_DETALS: TIntegerField
      FieldName = 'COD_DETALS'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsVendaDetCOD_VENDA_DET: TIntegerField
      FieldName = 'COD_VENDA_DET'
      DisplayFormat = '#0000'
    end
    object CdsVendaDetCOD_PROD_DET: TIntegerField
      FieldName = 'COD_PROD_DET'
      DisplayFormat = '#0000'
    end
    object CdsVendaDetCOD_CLI_DET: TIntegerField
      FieldName = 'COD_CLI_DET'
      DisplayFormat = '#0000'
    end
    object CdsVendaDetQTD_DET: TFloatField
      FieldName = 'QTD_DET'
      DisplayFormat = '#0000'
    end
    object CdsVendaDetVLR_UNIT_DET: TFloatField
      FieldName = 'VLR_UNIT_DET'
      DisplayFormat = '#,##0.00'
    end
    object CdsVendaDetVLR_TOT_DET: TFloatField
      FieldName = 'VLR_TOT_DET'
      DisplayFormat = '#,##0.00'
    end
    object CdsVendaDetDESC_PROD_DET: TStringField
      FieldName = 'DESC_PROD_DET'
      Size = 30
    end
  end
  object SqlPesqProduto: TSQLDataSet
    CommandText = 'select * from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 262
  end
  object DspPesqProduto: TDataSetProvider
    DataSet = SqlPesqProduto
    Options = [poAllowCommandText]
    Left = 32
    Top = 315
  end
  object CdsPesqProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqProduto'
    Left = 32
    Top = 368
    object IntegerField1: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
      DisplayFormat = '#0000'
    end
    object StringField1: TStringField
      FieldName = 'DESC_PROD'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'VLR_CUSTO'
      EditFormat = '#,##0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'VLR_VENDA'
      EditFormat = '#,##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'QTD_PROD'
    end
  end
  object SqlVenda: TSQLDataSet
    CommandText = 'select * from VENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 239
    Top = 104
  end
  object DspVenda: TDataSetProvider
    DataSet = SqlVenda
    Options = [poAllowCommandText]
    Left = 239
    Top = 152
  end
  object CdsVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVenda'
    Left = 239
    Top = 208
    object CdsVendaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
      DisplayFormat = '#00000'
    end
    object CdsVendaDATA_HORA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_HORA_VENDA'
    end
    object CdsVendaOBS_VENDA: TStringField
      FieldName = 'OBS_VENDA'
      Size = 100
    end
    object CdsVendaCOD_CLI_VENDA: TIntegerField
      FieldName = 'COD_CLI_VENDA'
    end
    object CdsVendaTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object CdsVendaDESCONTO_VENDA: TFloatField
      FieldName = 'DESCONTO_VENDA'
    end
  end
  object SqlVendaQuant: TSQLDataSet
    CommandText = 
      'Select'#13#10'      d.COD_PROD_DET, d.QTD_DET,'#13#10'      p.COD_PROD, p.QT' +
      'D_PROD'#13#10'From DETALHES_VENDA d'#13#10'inner join PRODUTO p  on d.COD_PR' +
      'OD_DET = p.COD_PROD'#13#10'Where COD_VENDA_DET = :pCodVendaDet And COD' +
      '_PROD_DET = :pCodProdDet'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodVendaDet'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodProdDet'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 308
    Top = 262
  end
  object DspVendaQuant: TDataSetProvider
    DataSet = SqlVendaQuant
    Left = 308
    Top = 317
  end
  object CdsVendaQuant: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodVendaDet'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodProdDet'
        ParamType = ptInput
      end>
    ProviderName = 'DspVendaQuant'
    Left = 308
    Top = 371
    object CdsVendaQuantCOD_PROD_DET: TIntegerField
      FieldName = 'COD_PROD_DET'
    end
    object CdsVendaQuantQTD_DET: TFloatField
      FieldName = 'QTD_DET'
    end
    object CdsVendaQuantCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Required = True
    end
    object CdsVendaQuantQTD_PROD: TFloatField
      FieldName = 'QTD_PROD'
    end
  end
  object SqlUpdtetalhes: TSQLDataSet
    CommandText = 
      'Update DETALHES_VENDA '#13#10'Set QTD_DET = :pQuant, VLR_TOT_DET =:pTo' +
      't'#13#10'WHERE COD_VENDA_DET = :pVendaDet AND COD_PROD_DET = :pProdDet' +
      ' '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'pQuant'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pTot'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVendaDet'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pProdDet'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 564
    Top = 105
  end
  object DspUpdtDetalhes: TDataSetProvider
    DataSet = SqlUpdtetalhes
    Left = 564
    Top = 150
  end
  object CdsUpdDetalhes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'pQuant'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pTot'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVendaDet'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pProdDet'
        ParamType = ptInput
      end>
    ProviderName = 'DspUpdtDetalhes'
    Left = 564
    Top = 203
  end
  object SqlPesqDetalhes: TSQLDataSet
    CommandText = 
      'SELECT V.COD_VENDA,'#13#10'       R.COD_PROD_REG,'#13#10'       R.QTD_REG,'#13#10 +
      '       R.VLR_UNIT_REG,'#13#10'       R.VLR_TOT_REG,'#13#10'       R.DATA_REG' +
      ','#13#10'       V.DATA_HORA_VENDA,'#13#10'       V.OBS_VENDA,'#13#10'--       V.CO' +
      'D_CLI_VENDA,'#13#10'       P.DESC_PROD,'#13#10'       P.VLR_CUSTO,'#13#10'       P' +
      '.VLR_VENDA'#13#10'FROM REGISTROS R'#13#10'INNER JOIN VENDA   V ON R.COD_VEND' +
      'A_REG = V.COD_VENDA'#13#10'INNER JOIN PRODUTO P ON R.COD_PROD_REG = P.' +
      'COD_PROD'#13#10'WHERE R.DATA_REG = :pDataReg'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDataReg'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 242
    Top = 262
  end
  object DspPesqDetalhes: TDataSetProvider
    DataSet = SqlPesqDetalhes
    Options = [poAllowCommandText]
    Left = 242
    Top = 316
  end
  object CdsPesqDetalhes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDataReg'
        ParamType = ptInput
      end>
    ProviderName = 'DspPesqDetalhes'
    Left = 242
    Top = 369
    object CdsPesqDetalhesCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object CdsPesqDetalhesCOD_PROD_REG: TIntegerField
      FieldName = 'COD_PROD_REG'
    end
    object CdsPesqDetalhesQTD_REG: TFloatField
      FieldName = 'QTD_REG'
    end
    object CdsPesqDetalhesVLR_UNIT_REG: TFloatField
      FieldName = 'VLR_UNIT_REG'
    end
    object CdsPesqDetalhesVLR_TOT_REG: TFloatField
      FieldName = 'VLR_TOT_REG'
    end
    object CdsPesqDetalhesDATA_REG: TDateField
      FieldName = 'DATA_REG'
    end
    object CdsPesqDetalhesDATA_HORA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_HORA_VENDA'
    end
    object CdsPesqDetalhesOBS_VENDA: TStringField
      FieldName = 'OBS_VENDA'
      Size = 100
    end
    object CdsPesqDetalhesDESC_PROD: TStringField
      FieldName = 'DESC_PROD'
      Size = 30
    end
    object CdsPesqDetalhesVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
    end
    object CdsPesqDetalhesVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
    end
  end
  object SqlUpdEstoque: TSQLDataSet
    CommandText = 
      'Update PRODUTO'#13#10'Set QTD_PROD = :pQtdProd '#13#10'WHERE COD_PROD = :pCo' +
      'dProd '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'pQtdProd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodProd'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 564
    Top = 262
  end
  object DspUpdEstoque: TDataSetProvider
    DataSet = SqlUpdEstoque
    Left = 568
    Top = 318
  end
  object CdsUpdEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'pQtdProd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodProd'
        ParamType = ptInput
      end>
    ProviderName = 'DspUpdEstoque'
    Left = 568
    Top = 374
  end
  object SqlDeleteDetails: TSQLDataSet
    CommandText = 'Delete'#13#10'From DETALHES_VENDA '#13#10'WHERE COD_VENDA_DET = :pVendaDet'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pVendaDet'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 676
    Top = 262
  end
  object DspDeleteDetails: TDataSetProvider
    DataSet = SqlDeleteDetails
    Left = 676
    Top = 317
  end
  object CdsDeleteDetails: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pVendaDet'
        ParamType = ptInput
      end>
    ProviderName = 'DspDeleteDetails'
    Left = 676
    Top = 373
  end
  object SqlDeleteVenda: TSQLDataSet
    CommandText = 'Delete'#13#10'From VENDA '#13#10'WHERE COD_VENDA = :pVenda'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pVenda'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 676
    Top = 97
  end
  object DspDeleteVenda: TDataSetProvider
    DataSet = SqlDeleteVenda
    Left = 676
    Top = 150
  end
  object CdsDeleteVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pVenda'
        ParamType = ptInput
      end>
    ProviderName = 'DspDeleteVenda'
    Left = 676
    Top = 203
  end
  object CdsSomaVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSomaVenda'
    Left = 489
    Top = 373
    object CdsSomaVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DspSomaVenda: TDataSetProvider
    DataSet = SqlSomaVenda
    Options = [poAllowCommandText]
    Left = 489
    Top = 317
  end
  object SqlSomaVenda: TSQLDataSet
    CommandText = 'select Sum(VLR_TOT_DET) Total from DETALHES_VENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 489
    Top = 262
  end
  object SqlRegistro: TSQLDataSet
    CommandText = 'select * from REGISTROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 391
    Top = 102
  end
  object DspRegistro: TDataSetProvider
    DataSet = SqlRegistro
    Options = [poAllowCommandText]
    Left = 391
    Top = 150
  end
  object CdsRegistro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRegistro'
    Left = 391
    Top = 206
    object CdsRegistroCOD_REG: TIntegerField
      FieldName = 'COD_REG'
      Required = True
    end
    object CdsRegistroCOD_DETAILS_REG: TIntegerField
      FieldName = 'COD_DETAILS_REG'
    end
    object CdsRegistroCOD_PROD_REG: TIntegerField
      FieldName = 'COD_PROD_REG'
    end
    object CdsRegistroCOD_CLI_REG: TIntegerField
      FieldName = 'COD_CLI_REG'
    end
    object CdsRegistroQTD_REG: TFloatField
      FieldName = 'QTD_REG'
    end
    object CdsRegistroVLR_UNIT_REG: TFloatField
      FieldName = 'VLR_UNIT_REG'
    end
    object CdsRegistroVLR_TOT_REG: TFloatField
      FieldName = 'VLR_TOT_REG'
    end
    object CdsRegistroDESC_PROD_REG: TStringField
      FieldName = 'DESC_PROD_REG'
      Size = 30
    end
    object CdsRegistroCOD_VENDA_REG: TIntegerField
      FieldName = 'COD_VENDA_REG'
    end
    object CdsRegistroDATA_REG: TDateField
      FieldName = 'DATA_REG'
    end
  end
  object SqlEntrega: TSQLDataSet
    CommandText = 'select * from ENTREGA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 172
    Top = 262
  end
  object DspEntrega: TDataSetProvider
    DataSet = SqlEntrega
    Options = [poAllowCommandText]
    Left = 171
    Top = 316
  end
  object CdsEntrega: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEntrega'
    Left = 172
    Top = 368
  end
  object SqlLimpaDetalhes: TSQLDataSet
    CommandText = 'Delete From DETALHES_VENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 395
    Top = 262
  end
  object DspLimpaDetalhes: TDataSetProvider
    DataSet = SqlLimpaDetalhes
    Left = 395
    Top = 317
  end
  object CdsLimpaDetalhes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pVendaDet'
        ParamType = ptInput
      end>
    ProviderName = 'DspLimpaDetalhes'
    Left = 395
    Top = 372
  end
  object SqlDiasMov: TSQLDataSet
    CommandText = 
      'Select distinct'#13#10'      extract(day from data_reg) dia'#13#10'From REGI' +
      'STROS'#13#10'where'#13#10'     extract (month from data_reg) = :pMes '#13#10'And'#13#10 +
      '     extract (year from data_reg) = :pAno'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pMes'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pAno'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = SQLConnection
    Left = 763
    Top = 97
  end
  object DspDiasMov: TDataSetProvider
    DataSet = SqlDiasMov
    Options = [poAllowCommandText]
    Left = 763
    Top = 150
  end
  object CdsDiasMov: TClientDataSet
    Active = True
    Aggregates = <>
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'pMes'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pAno'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'DspDiasMov'
    Left = 763
    Top = 203
  end
  object CdsMov: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDataMov'
        ParamType = ptInput
      end>
    ProviderName = 'DspMov'
    Left = 763
    Top = 376
    object CdsMovCOD_REG: TIntegerField
      FieldName = 'COD_REG'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsMovCOD_DETAILS_REG: TIntegerField
      FieldName = 'COD_DETAILS_REG'
      DisplayFormat = '#0000'
    end
    object CdsMovCOD_PROD_REG: TIntegerField
      FieldName = 'COD_PROD_REG'
      DisplayFormat = '#0000'
    end
    object CdsMovCOD_CLI_REG: TIntegerField
      FieldName = 'COD_CLI_REG'
      DisplayFormat = '#0000'
    end
    object CdsMovQTD_REG: TFloatField
      FieldName = 'QTD_REG'
      DisplayFormat = '#0000'
    end
    object CdsMovVLR_UNIT_REG: TFloatField
      FieldName = 'VLR_UNIT_REG'
      DisplayFormat = '#,##0.00'
    end
    object CdsMovVLR_TOT_REG: TFloatField
      FieldName = 'VLR_TOT_REG'
      DisplayFormat = '#,##0.00'
    end
    object CdsMovDESC_PROD_REG: TStringField
      FieldName = 'DESC_PROD_REG'
      Size = 30
    end
    object CdsMovCOD_VENDA_REG: TIntegerField
      FieldName = 'COD_VENDA_REG'
      DisplayFormat = '#0000'
    end
    object CdsMovDATA_REG: TDateField
      FieldName = 'DATA_REG'
    end
    object CdsMovTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object CdsMovDESCONTO_VENDA: TFloatField
      FieldName = 'DESCONTO_VENDA'
    end
  end
  object DspMov: TDataSetProvider
    DataSet = SqlMov
    Left = 763
    Top = 320
  end
  object SqlMov: TSQLDataSet
    CommandText = 
      'Select r.*, v.Tipo_Pagamento, v.DESCONTO_VENDA '#13#10'from REGISTROS ' +
      'r'#13#10'Left Join Venda v on r.Cod_Venda_Reg = v.Cod_Venda'#13#10'where DAT' +
      'A_REG = :pDataMov'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDataMov'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 763
    Top = 262
  end
  object SqlLembretes: TSQLDataSet
    CommandText = 'select * from LEMBRETE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 830
    Top = 97
  end
  object DspLembretes: TDataSetProvider
    DataSet = SqlLembretes
    Options = [poAllowCommandText]
    Left = 830
    Top = 150
  end
  object CdsLembretes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLembretes'
    Left = 830
    Top = 203
    object CdsLembretesCOD_LEMBRETE: TIntegerField
      FieldName = 'COD_LEMBRETE'
      Required = True
    end
    object CdsLembretesDESC_LEMBRETE: TStringField
      FieldName = 'DESC_LEMBRETE'
      Size = 200
    end
    object CdsLembretesDATA_LEMBRETE: TDateField
      FieldName = 'DATA_LEMBRETE'
    end
    object CdsLembretesHORA_LEMBRETE: TTimeField
      FieldName = 'HORA_LEMBRETE'
    end
    object CdsLembretesFLAG_PENDENTE: TStringField
      FieldName = 'FLAG_PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object SqlPesqLemb: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' '#9'COD_LEMBRETE,'#13#10' '#9'DESC_LEMBRETE,'#13#10'  FLAG_PENDENTE'#13#10'FROM' +
      #13#10' LEMBRETE'#13#10'WHERE'#13#10'('#13#10' ('#13#10' '#9'DATA_LEMBRETE = CURRENT_DATE AND'#13#10' ' +
      #9'HORA_LEMBRETE <= CURRENT_TIME'#13#10' ) OR'#13#10#13#10' '#9'DATA_LEMBRETE > CURRE' +
      'NT_DATE'#13#10')'#13#10'AND '#13#10' FLAG_PENDENTE = '#39'0'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 107
    Top = 262
  end
  object DspPesqLemb: TDataSetProvider
    DataSet = SqlPesqLemb
    Left = 108
    Top = 315
  end
  object CdsPesqLemb: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesqLemb'
    Left = 107
    Top = 368
    object CdsPesqLembCOD_LEMBRETE: TIntegerField
      FieldName = 'COD_LEMBRETE'
      Required = True
    end
    object CdsPesqLembDESC_LEMBRETE: TStringField
      FieldName = 'DESC_LEMBRETE'
      Size = 200
    end
    object CdsPesqLembFLAG_PENDENTE: TStringField
      FieldName = 'FLAG_PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object CdsAniversario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAniversario'
    Left = 904
    Top = 372
    object CdsAniversarioCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Required = True
      DisplayFormat = '#0000'
    end
    object CdsAniversarioNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 50
    end
    object CdsAniversarioFLAG_NIVER: TIntegerField
      FieldName = 'FLAG_NIVER'
    end
    object CdsAniversarioNIVER_CLI: TDateField
      FieldName = 'NIVER_CLI'
    end
  end
  object DspAniversario: TDataSetProvider
    DataSet = SqlAniversario
    Left = 904
    Top = 319
  end
  object SqlAniversario: TSQLDataSet
    CommandText = 
      'select COD_CLI,'#13#10'       NOME_CLI,'#13#10'       FLAG_NIVER,'#13#10'       NI' +
      'VER_CLI'#13#10'from CLIENTE'#13#10'WHERE EXTRACT(day FROM NIVER_CLI) = EXTRA' +
      'CT(day FROM CURRENT_DATE)'#13#10'AND EXTRACT(month FROM NIVER_CLI) = E' +
      'XTRACT(month FROM CURRENT_DATE)'#13#10'AND FLAG_NIVER IS NULL OR FLAG_' +
      'NIVER < EXTRACT(YEAR FROM CURRENT_DATE)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 904
    Top = 261
  end
  object SqlUpdPagto: TSQLDataSet
    CommandText = 
      'Update VENDA '#13#10'Set TIPO_PAGAMENTO = :pPagto '#13#10'WHERE COD_VENDA = ' +
      ':pVenda'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pPagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVenda'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 901
    Top = 97
  end
  object DspUpdPagto: TDataSetProvider
    DataSet = SqlUpdPagto
    Options = [poAllowCommandText]
    Left = 901
    Top = 150
  end
  object CdsUpdPagto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pVenda'
        ParamType = ptInput
      end>
    ProviderName = 'DspUpdPagto'
    Left = 901
    Top = 203
  end
  object SqlUpdDesconto: TSQLDataSet
    CommandText = 
      'Update VENDA '#13#10'Set DESCONTO_VENDA = :pDesconto '#13#10'WHERE COD_VENDA' +
      ' = :pCodVenda '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'pDesconto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodVenda'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection
    Left = 828
    Top = 260
  end
  object DspUpdDesconto: TDataSetProvider
    DataSet = SqlUpdDesconto
    Left = 828
    Top = 320
  end
  object CdsUpdDesconto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'pDesconto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCodVenda'
        ParamType = ptInput
      end>
    ProviderName = 'DspUpdDesconto'
    Left = 828
    Top = 373
  end
end

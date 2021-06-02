unit uDm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TDm = class(TDataModule)
    SQLConnection: TSQLConnection;
    SqlProduto: TSQLDataSet;
    DspProduto: TDataSetProvider;
    CdsProduto: TClientDataSet;
    CdsProdutoCOD_PROD: TIntegerField;
    CdsProdutoDESC_PROD: TStringField;
    CdsProdutoVLR_CUSTO: TFloatField;
    CdsProdutoVLR_VENDA: TFloatField;
    CdsProdutoQTD_PROD: TFloatField;
    SQLGeraID: TSQLDataSet;
    DSPGeraID: TDataSetProvider;
    CdsGeraID: TClientDataSet;
    SmallintField1: TSmallintField;
    CdsPesqEstoque: TClientDataSet;
    DspPesqEstoque: TDataSetProvider;
    SqlPesqEstoque: TSQLDataSet;
    SqlCliente: TSQLDataSet;
    DspCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    CdsClienteCOD_CLI: TIntegerField;
    CdsClienteNOME_CLI: TStringField;
    CdsClienteLOGRADOURO_CLI: TStringField;
    CdsClienteNUM_CLI: TSmallintField;
    CdsClienteCOMPL_CLI: TStringField;
    CdsClienteBAIRRO_CLI: TStringField;
    CdsClienteCIDADE: TStringField;
    CdsClienteUF: TStringField;
    CdsClienteTEL_CLI: TStringField;
    CdsClienteCEL_CLI: TStringField;
    CdsClienteCEP_CLI: TStringField;
    CdsClienteEMAIL_CLI: TStringField;
    SqlVendaDet: TSQLDataSet;
    DspVendaDet: TDataSetProvider;
    CdsVendaDet: TClientDataSet;
    SqlPesqProduto: TSQLDataSet;
    DspPesqProduto: TDataSetProvider;
    CdsPesqProduto: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    SqlVenda: TSQLDataSet;
    DspVenda: TDataSetProvider;
    CdsVenda: TClientDataSet;
    CdsVendaCOD_VENDA: TIntegerField;
    CdsVendaDATA_HORA_VENDA: TSQLTimeStampField;
    CdsVendaOBS_VENDA: TStringField;
    CdsVendaCOD_CLI_VENDA: TIntegerField;
    SqlVendaQuant: TSQLDataSet;
    DspVendaQuant: TDataSetProvider;
    CdsVendaQuant: TClientDataSet;
    SqlUpdtetalhes: TSQLDataSet;
    DspUpdtDetalhes: TDataSetProvider;
    CdsUpdDetalhes: TClientDataSet;
    CdsVendaQuantCOD_PROD_DET: TIntegerField;
    SqlPesqDetalhes: TSQLDataSet;
    DspPesqDetalhes: TDataSetProvider;
    CdsPesqDetalhes: TClientDataSet;
    CdsVendaQuantQTD_DET: TFloatField;
    CdsVendaDetCOD_DETALS: TIntegerField;
    CdsVendaDetCOD_VENDA_DET: TIntegerField;
    CdsVendaDetCOD_PROD_DET: TIntegerField;
    CdsVendaDetCOD_CLI_DET: TIntegerField;
    CdsVendaDetQTD_DET: TFloatField;
    CdsVendaDetVLR_UNIT_DET: TFloatField;
    CdsVendaDetVLR_TOT_DET: TFloatField;
    SqlUpdEstoque: TSQLDataSet;
    DspUpdEstoque: TDataSetProvider;
    CdsUpdEstoque: TClientDataSet;
    CdsVendaQuantCOD_PROD: TIntegerField;
    CdsVendaQuantQTD_PROD: TFloatField;
    SqlDeleteDetails: TSQLDataSet;
    DspDeleteDetails: TDataSetProvider;
    CdsDeleteDetails: TClientDataSet;
    SqlDeleteVenda: TSQLDataSet;
    DspDeleteVenda: TDataSetProvider;
    CdsDeleteVenda: TClientDataSet;
    CdsVendaDetDESC_PROD_DET: TStringField;
    CdsSomaVenda: TClientDataSet;
    DspSomaVenda: TDataSetProvider;
    SqlSomaVenda: TSQLDataSet;
    CdsSomaVendaTOTAL: TFloatField;
    SqlRegistro: TSQLDataSet;
    DspRegistro: TDataSetProvider;
    CdsRegistro: TClientDataSet;
    CdsRegistroCOD_REG: TIntegerField;
    CdsRegistroCOD_DETAILS_REG: TIntegerField;
    CdsRegistroCOD_PROD_REG: TIntegerField;
    CdsRegistroCOD_CLI_REG: TIntegerField;
    CdsRegistroQTD_REG: TFloatField;
    CdsRegistroVLR_UNIT_REG: TFloatField;
    CdsRegistroVLR_TOT_REG: TFloatField;
    CdsRegistroDESC_PROD_REG: TStringField;
    CdsRegistroCOD_VENDA_REG: TIntegerField;
    SqlEntrega: TSQLDataSet;
    DspEntrega: TDataSetProvider;
    CdsEntrega: TClientDataSet;
    SqlLimpaDetalhes: TSQLDataSet;
    DspLimpaDetalhes: TDataSetProvider;
    CdsLimpaDetalhes: TClientDataSet;
    SqlDiasMov: TSQLDataSet;
    DspDiasMov: TDataSetProvider;
    CdsDiasMov: TClientDataSet;
    CdsMov: TClientDataSet;
    DspMov: TDataSetProvider;
    SqlMov: TSQLDataSet;
    SqlLembretes: TSQLDataSet;
    DspLembretes: TDataSetProvider;
    CdsLembretes: TClientDataSet;
    CdsLembretesCOD_LEMBRETE: TIntegerField;
    CdsLembretesDESC_LEMBRETE: TStringField;
    CdsLembretesDATA_LEMBRETE: TDateField;
    CdsLembretesHORA_LEMBRETE: TTimeField;
    CdsLembretesFLAG_PENDENTE: TStringField;
    SqlPesqLemb: TSQLDataSet;
    DspPesqLemb: TDataSetProvider;
    CdsPesqLemb: TClientDataSet;
    CdsPesqLembCOD_LEMBRETE: TIntegerField;
    CdsPesqLembDESC_LEMBRETE: TStringField;
    CdsPesqLembFLAG_PENDENTE: TStringField;
    CdsAniversario: TClientDataSet;
    DspAniversario: TDataSetProvider;
    SqlAniversario: TSQLDataSet;
    CdsAniversarioCOD_CLI: TIntegerField;
    CdsAniversarioNOME_CLI: TStringField;
    CdsAniversarioFLAG_NIVER: TIntegerField;
    CdsAniversarioNIVER_CLI: TDateField;
    CdsClienteFLAG_NIVER: TIntegerField;
    CdsClienteNIVER_CLI: TDateField;
    CdsPesqDetalhesCOD_VENDA: TIntegerField;
    CdsPesqDetalhesCOD_PROD_REG: TIntegerField;
    CdsPesqDetalhesQTD_REG: TFloatField;
    CdsPesqDetalhesVLR_UNIT_REG: TFloatField;
    CdsPesqDetalhesVLR_TOT_REG: TFloatField;
    CdsPesqDetalhesDATA_REG: TDateField;
    CdsPesqDetalhesDATA_HORA_VENDA: TSQLTimeStampField;
    CdsPesqDetalhesOBS_VENDA: TStringField;
    CdsPesqDetalhesDESC_PROD: TStringField;
    CdsPesqDetalhesVLR_CUSTO: TFloatField;
    CdsPesqDetalhesVLR_VENDA: TFloatField;
    CdsRegistroDATA_REG: TDateField;
    CdsMovCOD_REG: TIntegerField;
    CdsMovCOD_DETAILS_REG: TIntegerField;
    CdsMovCOD_PROD_REG: TIntegerField;
    CdsMovCOD_CLI_REG: TIntegerField;
    CdsMovQTD_REG: TFloatField;
    CdsMovVLR_UNIT_REG: TFloatField;
    CdsMovVLR_TOT_REG: TFloatField;
    CdsMovDESC_PROD_REG: TStringField;
    CdsMovCOD_VENDA_REG: TIntegerField;
    CdsMovDATA_REG: TDateField;
    CdsVendaTIPO_PAGAMENTO: TStringField;
    SqlUpdPagto: TSQLDataSet;
    DspUpdPagto: TDataSetProvider;
    CdsUpdPagto: TClientDataSet;
    CdsMovTIPO_PAGAMENTO: TStringField;
    CdsPesqEstoqueCOD_PROD: TIntegerField;
    CdsPesqEstoqueDESC_PROD: TStringField;
    CdsPesqEstoqueVLR_CUSTO: TFloatField;
    CdsPesqEstoqueVLR_VENDA: TFloatField;
    CdsPesqEstoqueQTD_PROD: TFloatField;
    SqlUpdDesconto: TSQLDataSet;
    DspUpdDesconto: TDataSetProvider;
    CdsUpdDesconto: TClientDataSet;
    CdsVendaDESCONTO_VENDA: TFloatField;
    CdsMovDESCONTO_VENDA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

end.

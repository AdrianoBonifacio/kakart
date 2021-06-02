unit ufrmVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadGen, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, DB, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, Grids, DBGrids, Buttons, DBClient, FMTBcd, SqlExpr,
  dbcgrids, ppParameter, ppDesignLayer;

type
  TfrmVenda = class(TfrmCadGen)
    dtsProduto: TDataSource;
    dbgrdProdutos: TDBGrid;
    dbgrdDetalhes: TDBGrid;
    spbConcVenda: TSpeedButton;
    DtsVenda: TDataSource;
    dtsVendaQuant: TDataSource;
    dtsRegistro: TDataSource;
    Label1: TLabel;
    lblVlrVenda: TLabel;
    rgPagamento: TRadioGroup;
    edtQtdx: TEdit;
    spbDesconto: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure tbtnPesquisarClick(Sender: TObject);
    procedure dbgrdProdutosDblClick(Sender: TObject);
    procedure tbtnCancelarClick(Sender: TObject);
    procedure spbConcVendaClick(Sender: TObject);
    procedure tbtnNovoClick(Sender: TObject);
    procedure tbtnSalvarClick(Sender: TObject);
    procedure tbtnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgPagamentoClick(Sender: TObject);
    procedure spbDescontoClick(Sender: TObject);
  private
    { Private declarations }

  public
    CodigoVenda, CodigoProduto: Integer;
    ValorCompra, Quantidade, QuantEstoque,
    QuantVendida, CalcVenda, Desc_Venda, ValorDescReal: Double;
    NumParcelas: String;

    procedure Atualiza_Detalhes(); {Realiza Update ou Inserçao em Detalhes}
    procedure LocalizaPVenda(CodProd,CodVenda:Integer);
    procedure ExportarDetalhes;
    function CalculaEstoque(Quant_Atual,Quant_Vendida : Double):Double;
    function Tipo_Pagamento(Radiogroup: TRadioGroup): String;

    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

uses uDm, ufrmPesqProduto, Math;

{$R *.dfm}

procedure TfrmVenda.FormCreate(Sender: TObject);
begin
 { inherited; }

end;

procedure TfrmVenda.tbtnPesquisarClick(Sender: TObject);
begin
  inherited;
  if(frmPesqProduto = nil) then
  begin
    try
      frmPesqProduto := TfrmPesqProduto.Create(Self);
      frmPesqProduto.ShowModal;
    finally
      FreeAndNil(frmPesqProduto);
    end;
  end;
end;

procedure TfrmVenda.dbgrdProdutosDblClick(Sender: TObject);
begin
  inherited;

  CodigoProduto := dtsProduto.DataSet.FieldByName('COD_PROD').AsInteger;

  Atualiza_Detalhes;
                     
  { Rotina para calcular o valor da compra }
  Dm.CdsSomaVenda.Close;
  Dm.CdsSomaVenda.Open;

  if(Dm.CdsSomaVenda.RecordCount > 0) then
  begin
    CalcVenda := Dm.CdsSomaVenda.FieldbyName('TOTAL').AsFloat;

    lblVlrVenda.Caption := FormatFloat('R$ ##0.00',CalcVenda);  
  end;
end;

procedure TfrmVenda.tbtnCancelarClick(Sender: TObject);
begin
  {inherited;}

  if MessageDlg('Deseja realmente cancelar a venda?',mtConfirmation,
      [mbYes,mbNo],0) = mrYes then
  begin
    rgPagamento.ItemIndex := -1;
    
    Dm.CdsDeleteDetails.Close;
    Dm.CdsDeleteDetails.Params.ParamByName('pVendaDet').AsInteger := CodigoVenda;
    Dm.CdsDeleteDetails.Execute;
    dtsCadastro.DataSet.Refresh;

    Dm.CdsDeleteVenda.Close;
    Dm.CdsDeleteVenda.Params.ParamByName('pVenda').AsInteger := CodigoVenda;
    Dm.CdsDeleteVenda.Execute;
    DtsVenda.DataSet.Refresh;

    lblVlrVenda.Caption := 'R$ 0,00';

    TrataBotoes;
  end;  
end;

procedure TfrmVenda.spbConcVendaClick(Sender: TObject);
begin
 { inherited; }
  
  if(dtsCadastro.DataSet.RecordCount = 0) then
  begin
    MessageDlg('Não há produtos na lista!', mtInformation, [MbOk],0);
    Abort;
  end;

  if(rgPagamento.ItemIndex < 0) then
  begin
    MessageDlg('Favor informar o tipo de pagamento!',mtWarning, [MbOk],0);
    abort;
  end;

  if (Desc_Venda > 0) then
  begin
    Dm.CdsUpdDesconto.Close;
    Dm.CdsUpdDesconto.Params.ParamByName('pDesconto').AsFloat   := Desc_Venda;
    Dm.CdsUpdDesconto.Params.ParamByName('pCodVenda').AsInteger := CodigoVenda;
    Dm.CdsUpdDesconto.Execute;
  end;

  dtsCadastro.DataSet.First;
  
  while not dtsCadastro.DataSet.Eof do
  begin
    LocalizaPVenda(dtsCadastro.DataSet.FieldbyName('COD_PROD_DET').AsInteger,CodigoVenda);

    QuantEstoque  := Dm.CdsVendaQuant.FieldByName('QTD_PROD').AsFloat;
    QuantVendida  := Dm.CdsVendaQuant.FieldByName('QTD_DET').AsFloat;
    CodigoProduto := Dm.CdsVendaQuant.FieldByName('COD_PROD').AsInteger;

    Dm.CdsUpdEstoque.Close;
    Dm.CdsUpdEstoque.Params.ParamByName('pQtdProd').AsFloat   := CalculaEstoque(QuantEstoque,QuantVendida);
    Dm.CdsUpdEstoque.Params.ParamByName('pCodProd').AsInteger := CodigoProduto;
    Dm.CdsUpdEstoque.Execute;

    ExportarDetalhes;

    dtsCadastro.DataSet.Next;
  end;

  dtsProduto.DataSet.Refresh;

  TrataBotoes;

  Dm.SqlLimpaDetalhes.ExecSQL(True);


  Dm.CdsUpdPagto.Close;

  if NumParcelas <> EmptyStr then
    Dm.CdsUpdPagto.Params.ParamByName('pPagto').Value := Tipo_Pagamento(rgPagamento)+' '+
      NumParcelas+'x'
  else
    Dm.CdsUpdPagto.Params.ParamByName('pPagto').Value := Tipo_Pagamento(rgPagamento);

  Dm.CdsUpdPagto.Params.ParamByName('pVenda').AsInteger := CodigoVenda;
  Dm.CdsUpdPagto.Execute;

  rgPagamento.ItemIndex := -1;

  MessageDlg('Venda realizada com Sucesso!',mtInformation,[MbOk],0);
  
  dtsCadastro.DataSet.Refresh;
  lblVlrVenda.Caption := '0.00';
end;

procedure TfrmVenda.tbtnNovoClick(Sender: TObject);
begin
  inherited;

  Desc_Venda := 0;

  rgPagamento.ItemIndex := -1;

  CodigoVenda := 0;
  CodigoVenda := GeraProxID('COD_VENDA','VENDA');

  with dtsVenda.DataSet do
  begin
    Append;
    FieldByName('COD_VENDA').AsInteger := CodigoVenda;
    FieldByName('DATA_HORA_VENDA').AsDateTime := Now;
    { Observaçao e codigo do cliente verificar a necessidade }
    Post;
  end;
  TClientDataSet(DtsVenda.DataSet).ApplyUpdates(0);

end;

procedure TfrmVenda.tbtnSalvarClick(Sender: TObject);
begin
  {Gravando na Tabela Vendas primeiramente}
  TClientDataSet(DtsVenda.DataSet).ApplyUpdates(0);
  
  inherited;    { <== VERIFICAR }

end;

procedure TfrmVenda.Atualiza_Detalhes;
Var
  Valor: Double;
begin
  Quantidade := 0;

  if(dtsProduto.DataSet.FieldByName('QTD_PROD').AsInteger > 0) then
  begin
    Valor := StrToFloat(dtsProduto.DataSet.FieldByName('VLR_VENDA').AsString);

    LocalizaPVenda(CodigoProduto,CodigoVenda);

    if(Dm.CdsVendaQuant.RecordCount > 0) then
    begin
      Quantidade :=  Dm.CdsVendaQuant.FieldByName('QTD_DET').AsFloat;
      Quantidade := Quantidade + 1;
      Valor := Valor * Quantidade;

      Dm.CdsUpdDetalhes.Close;
      Dm.CdsUpdDetalhes.Params.ParamByName('pQuant').AsFloat      := Quantidade;
      Dm.CdsUpdDetalhes.Params.ParamByName('pVendaDet').AsInteger := CodigoVenda;
      Dm.CdsUpdDetalhes.Params.ParamByName('pProdDet').AsInteger  := CodigoProduto;
      Dm.CdsUpdDetalhes.Params.ParamByName('pTot').AsFloat        := Valor;
      Dm.CdsUpdDetalhes.Execute;

    end
    else
    begin
      Quantidade := 1;
      with dtsCadastro.DataSet do
      begin
        Append;
        FieldByName('COD_DETALS').AsInteger    := GeraProxID('COD_DETALS','DETALHES_VENDA');
        FieldByName('DESC_PROD_DET').AsString  := dtsProduto.DataSet.FieldByName('DESC_PROD').AsString;
        FieldByName('COD_VENDA_DET').AsInteger := CodigoVenda;
        FieldByName('COD_PROD_DET').AsInteger  := CodigoProduto;
        FieldByName('QTD_DET').AsFloat         := Quantidade;
        FieldByName('VLR_UNIT_DET').AsFloat    := Valor;
        FieldByName('VLR_TOT_DET').AsFloat     := Valor;

        { Verificar valor total }
        {  codigo do cliente verificar a necessidade }
        Post;
       TClientDataSet(dtsCadastro.DataSet).ApplyUpdates(0);
      end;
    end;

    dtsCadastro.DataSet.Refresh;
  end
  else
    MessageDlg('Produto sem estoque!',mtInformation,[MbOk],0);
end;

function TfrmVenda.CalculaEstoque(Quant_Atual,
  Quant_Vendida: Double): Double;
begin
  Result := Quant_Atual - Quant_Vendida;
end;

procedure TfrmVenda.LocalizaPVenda(CodProd, CodVenda: Integer);
begin
  Dm.CdsVendaQuant.Close;
  Dm.CdsVendaQuant.Params.ParamByName('pCodVendaDet').AsInteger := CodVenda;
  Dm.CdsVendaQuant.Params.ParamByName('pCodProdDet').AsInteger  := CodProd;
  Dm.CdsVendaQuant.Open;
end;

procedure TfrmVenda.tbtnEditarClick(Sender: TObject);
begin
 { inherited; }


end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  inherited;
  rgPagamento.ItemIndex := -1;
  CalcVenda := 0;

end;

procedure TfrmVenda.ExportarDetalhes;
begin
  with dtsRegistro.DataSet do
  begin
    Append;
    FieldByName('COD_REG').AsInteger := GeraProxID('COD_REG','REGISTROS');
    FieldByName('COD_DETAILS_REG').AsInteger := dtsCadastro.DataSet.FieldByName('COD_DETALS').AsInteger;
    FieldByName('COD_PROD_REG').AsInteger    := dtsCadastro.DataSet.FieldByName('COD_PROD_DET').AsInteger;
  {  FieldByName('COD_CLI_REG').AsInteger     := }
    FieldByName('QTD_REG').AsFloat         := dtsCadastro.DataSet.FieldByName('QTD_DET').AsFloat;
    FieldByName('VLR_UNIT_REG').AsFloat    := dtsCadastro.DataSet.FieldByName('VLR_UNIT_DET').AsFloat;
    FieldByName('VLR_TOT_REG').AsFloat     := dtsCadastro.DataSet.FieldByName('VLR_TOT_DET').AsFloat;
    FieldByName('DESC_PROD_REG').AsString  := dtsCadastro.DataSet.FieldByName('DESC_PROD_DET').AsString;
    FieldByName('COD_VENDA_REG').AsInteger := dtsCadastro.DataSet.FieldByName('COD_VENDA_DET').AsInteger;
    FieldByName('DATA_REG').AsDateTime     := Date;
    Post;
  end;
   TClientDataSet(dtsRegistro.DataSet).ApplyUpdates(0);
end;

function TfrmVenda.Tipo_Pagamento(Radiogroup: TRadioGroup): String;
var
  Pagamento : String;
begin
  if(Radiogroup.ItemIndex = 0) then
    Pagamento := 'Dinheiro'
  else if (Radiogroup.ItemIndex =1) then
    Pagamento := 'Débito'
  else
    Pagamento := 'Crédito';

  Result := Pagamento;
end;

procedure TfrmVenda.rgPagamentoClick(Sender: TObject);
begin
  inherited;
  if rgPagamento.ItemIndex = 2 then
  begin
    NumParcelas := InputBox('Parcelas','Quantidade de parcelas:','');
  end;
end;

procedure TfrmVenda.spbDescontoClick(Sender: TObject);
begin
  inherited;
  Desc_Venda := StrToFloat(InputBox ('Desconto a Vista','Informe o valor da Venda!','') );
end;

end.

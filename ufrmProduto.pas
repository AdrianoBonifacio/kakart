unit ufrmProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadGen, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, DB, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, Mask;

type
  TfrmProduto = class(TfrmCadGen)
    Label1: TLabel;
    Label2: TLabel;
    dbedtNomeProd: TDBEdit;
    Label3: TLabel;
    dbedtCustoProd: TDBEdit;
    Label4: TLabel;
    dbedtVendaProd: TDBEdit;
    Label5: TLabel;
    dbedtQuantProd: TDBEdit;
    dbtxtCodigo: TDBText;
    procedure tbtnSalvarClick(Sender: TObject);
    procedure tbtnPesquisarClick(Sender: TObject);
    procedure tbtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

uses uDm, ufmPesqEstoque, ufrmPesqProduto;

{$R *.dfm}

procedure TfrmProduto.tbtnSalvarClick(Sender: TObject);
begin
  if dtsCadastro.DataSet.FieldByName('DESC_PROD').AsString = EmptyStr then
  begin
    MessageDlg('Favor preenhcer o "Nome do Produto"!', mtInformation, [mbOk],0);
    dbedtNomeProd.SetFocus;
    exit;
  end;

  if dtsCadastro.DataSet.FieldByName('VLR_CUSTO').AsString = EmptyStr then
  begin
    MessageDlg('Favor preenhcer o campo "Preço de Custo"!', mtInformation, [mbOk],0);
    dbedtCustoProd.SetFocus;
    abort;
  end;

  if dtsCadastro.DataSet.FieldByName('VLR_VENDA').AsString = EmptyStr then
  begin
    MessageDlg('Favor preenhcer o campo "Preço de Venda"!', mtInformation, [mbOk],0);
    dbedtVendaProd.SetFocus;
    abort;
  end;

  if dtsCadastro.DataSet.FieldByName('QTD_PROD').AsString = EmptyStr then
  begin
    MessageDlg('Favor preenhcer o campo "Quantidade"!', mtInformation, [mbOk],0);
    dbedtQuantProd.SetFocus;
    abort;
  end;

  if dtsCadastro.DataSet.State in [dsInsert] then
    dtsCadastro.DataSet.FieldByName('COD_PROD').AsInteger := GeraProxID('COD_PROD','PRODUTO');

  inherited;

end;

procedure TfrmProduto.tbtnPesquisarClick(Sender: TObject);
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

procedure TfrmProduto.tbtnNovoClick(Sender: TObject);
begin
  inherited;
  dbedtNomeProd.SetFocus;
end;

end.

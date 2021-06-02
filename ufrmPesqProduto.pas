unit ufrmPesqProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmPesGen, DB, Grids, DBGrids, StdCtrls;

type
  TfrmPesqProduto = class(TfrmPesqGen)
    procedure edtPesquisarChange(Sender: TObject);
    procedure dbGridPesquisarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

uses ufrmProduto, ufmPesqEstoque, uDm, ufrmVenda;

{$R *.dfm}

procedure TfrmPesqProduto.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  PesquisaLike('DESC_PROD',edtPesquisar.Text);
end;

procedure TfrmPesqProduto.dbGridPesquisarDblClick(Sender: TObject);
begin
  inherited;
  if (frmProduto <> nil) then
  begin
    with frmProduto.dtsCadastro.DataSet do  //O resultado coloca o ponteiro no produto correto na tela de estoque
    begin
      //Localizar o ID do Produtos, no dataset da pesquisa, para carregar a na tela de Estoque o nome do produto correto
      Locate('COD_PROD',dtsPesquisar.DataSet.FieldByName('COD_PROD').AsInteger,[loCaseInsensitive, loPartialKey]);
    end;
    frmPesqProduto.Close;
  end else
  begin
    with frmVenda.dtsProduto.DataSet do
    begin
      Locate('COD_PROD',dtsPesquisar.DataSet.FieldByName('COD_PROD').AsInteger,[loCaseInsensitive, loPartialKey]);
    end;
    frmPesqProduto.Close;
  end;
end;

end.

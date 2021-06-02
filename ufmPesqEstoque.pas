unit ufmPesqEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmPesGen, DB, Grids, DBGrids, StdCtrls;

type
  TfrmPesquisa = class(TfrmPesqGen)
    procedure edtPesquisarChange(Sender: TObject);
    procedure dbGridPesquisarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses uDm, ufrmEstoque;

{$R *.dfm}

procedure TfrmPesquisa.edtPesquisarChange(Sender: TObject);
begin
  inherited;

  PesquisaLike('DESC_PROD',edtPesquisar.Text);

end;

procedure TfrmPesquisa.dbGridPesquisarDblClick(Sender: TObject);
begin
  inherited;
  with frmEstoque.dtsCadastro.DataSet do  //O resultado coloca o ponteiro no produto correto na tela de estoque
  begin
    //Localizar o ID do Produtos, no dataset da pesquisa, para carregar a na tela de Estoque o nome do produto correto
    Locate('COD_PROD',dtsPesquisar.DataSet.FieldByName('COD_PROD').AsInteger,[loCaseInsensitive, loPartialKey]);
  end;
  frmPesquisa.Close;
end;

end.

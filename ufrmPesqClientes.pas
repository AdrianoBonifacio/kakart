unit ufrmPesqClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmPesGen, DB, Grids, DBGrids, StdCtrls;

type
  TfrmPesqClientes = class(TfrmPesqGen)
    procedure edtPesquisarChange(Sender: TObject);
    procedure dbGridPesquisarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqClientes: TfrmPesqClientes;

implementation

uses uDm, ufrmCliente;

{$R *.dfm}

procedure TfrmPesqClientes.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  PesquisaLike('NOME_CLI',edtPesquisar.Text);
end;

procedure TfrmPesqClientes.dbGridPesquisarDblClick(Sender: TObject);
begin
  inherited;

  with frmCliente.dtsCadastro.DataSet do  //O resultado coloca o ponteiro no produto correto na tela de estoque
  begin
    //Localizar o ID do Produtos, no dataset da pesquisa, para carregar a na tela de Estoque o nome do produto correto
    Locate('COD_CLI',dtsPesquisar.DataSet.FieldByName('COD_CLI').AsInteger,[loCaseInsensitive, loPartialKey]);
  end;
  frmPesqClientes.Close;
end;

end.

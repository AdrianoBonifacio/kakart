program Verde_Vale;

uses
  Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uDm in 'uDm.pas' {Dm: TDataModule},
  ufrmCadGen in 'ufrmCadGen.pas' {frmCadGen},
  ufrmProduto in 'ufrmProduto.pas' {frmProduto},
  ufrmEstoque in 'ufrmEstoque.pas' {frmEstoque},
  ufrmPesGen in 'ufrmPesGen.pas' {frmPesqGen},
  ufmPesqEstoque in 'ufmPesqEstoque.pas' {frmPesquisa},
  ufrmPesqProduto in 'ufrmPesqProduto.pas' {frmPesqProduto},
  ufrmCliente in 'ufrmCliente.pas' {frmCliente},
  ufrmVenda in 'ufrmVenda.pas' {frmVenda},
  ufrmPesqClientes in 'ufrmPesqClientes.pas' {frmPesqClientes},
  ufrmLembretes in 'ufrmLembretes.pas' {frmLembretes},
  ufrmControleVendas in 'ufrmControleVendas.pas' {frmControleVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

unit ufrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    spbProduto: TSpeedButton;
    Label1: TLabel;
    spbEstoque: TSpeedButton;
    Label2: TLabel;
    imgProduto: TImage;
    imgEstoque: TImage;
    spbCliente: TSpeedButton;
    Label3: TLabel;
    spbVenda: TSpeedButton;
    Label4: TLabel;
    spbLembretes: TSpeedButton;
    Label5: TLabel;
    imgClientes: TImage;
    imgVendas: TImage;
    imgLembretes: TImage;
    Timer1: TTimer;
    imgControle: TImage;
    spbControleVendas: TSpeedButton;
    Label6: TLabel;
    procedure spbProdutoClick(Sender: TObject);
    procedure spbEstoqueClick(Sender: TObject);
    procedure spbClienteClick(Sender: TObject);
    procedure spbVendaClick(Sender: TObject);
    procedure spbLembretesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure spbControleVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses ufrmProduto, ufrmEstoque, ufrmCliente, ufrmVenda, ufrmLembretes, uDm,
  ufrmControleVendas;

{$R *.dfm}

procedure TfrmPrincipal.spbProdutoClick(Sender: TObject);
begin
  if (frmProduto = nil) then
  begin
    try
      frmProduto := TfrmProduto.Create(Self);
      frmProduto.ShowModal;
    finally
      FreeAndNil(frmProduto);
    end;
  end;
end;

procedure TfrmPrincipal.spbEstoqueClick(Sender: TObject);
begin
  if(frmEstoque = nil) then
  begin
    try
      frmEstoque := TfrmEstoque.Create(Self);
      frmEstoque.ShowModal;
    finally
      FreeAndNil(frmEstoque);
    end;
  end;
end;

procedure TfrmPrincipal.spbClienteClick(Sender: TObject);
begin
  if(frmCliente = nil) then
  begin
    try
      frmCliente := TfrmCliente.Create(Self);
      frmCliente.ShowModal;
    finally
      FreeAndNil(frmCliente);
    end;
  end;
end;

procedure TfrmPrincipal.spbVendaClick(Sender: TObject);
begin
  if(frmVenda = nil) then
  begin
    try
      frmVenda := TfrmVenda.Create(Self);
      frmVenda.ShowModal;
    finally
      FreeAndNil(frmVenda);
    end;
  end;
end;

procedure TfrmPrincipal.spbLembretesClick(Sender: TObject);
begin
  if(frmLembretes = nil) then
  begin
    try
      frmLembretes := TfrmLembretes.Create(Self);
      frmLembretes.tbtnNovoClick(Sender);
      frmLembretes.ShowModal;
    finally
      FreeAndNil(frmLembretes);    
    end;
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  with Dm.CdsPesqLemb do
  begin
    Close;
    Open;

    while not Eof do
    begin
      MessageDlg( (FieldByName('DESC_LEMBRETE').AsString) , mtInformation, [mbOk],0);
      Edit;
      FieldByName('FLAG_PENDENTE').AsString := '1';
      Post;
      ApplyUpdates(0);
      next;
    end;
  end;

  with Dm.CdsAniversario do
  begin
    Close;
    Open;

    while not Eof do
    begin
      MessageDlg('Hoje é aniversário de: '+#13+ (FieldByName('NOME_CLI').AsString), mtInformation, [mbOk],0);
      Edit;
      FieldByName('FLAG_NIVER').Value := CurrentYear;
      Post;
      ApplyUpdates(0);
      next;
    end;
  end;
end;

procedure TfrmPrincipal.spbControleVendasClick(Sender: TObject);
begin
  if(frmControleVendas = nil) then
  begin
    try
      frmControleVendas := TfrmControleVendas.Create(Self);
      frmControleVendas.ShowModal;
    finally
      FreeAndNil(frmControleVendas);
    end;
  end;
end;

end.


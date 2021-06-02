unit ufrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadGen, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, DB, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, Mask;

type
  TfrmCliente = class(TfrmCadGen)
    Label1: TLabel;
    Label2: TLabel;
    dbedtNome: TDBEdit;
    Label3: TLabel;
    dbedtLogradouro: TDBEdit;
    Label4: TLabel;
    dbedtNumero: TDBEdit;
    dbedtCodCli: TDBText;
    Label5: TLabel;
    dbedtComplemento: TDBEdit;
    Label6: TLabel;
    dbedtBairro: TDBEdit;
    Label7: TLabel;
    dbedtCidade: TDBEdit;
    Label8: TLabel;
    dbedtUf: TDBEdit;
    Label9: TLabel;
    dbedtTelefone: TDBEdit;
    Label10: TLabel;
    dbedtCelular: TDBEdit;
    Label11: TLabel;
    dbedtCep: TDBEdit;
    Label12: TLabel;
    dbedtEmail: TDBEdit;
    Label13: TLabel;
    dbedtDataNasc: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbtnNovoClick(Sender: TObject);
    procedure tbtnSalvarClick(Sender: TObject);
    procedure tbtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses uDm, ufrmPesqClientes;

{$R *.dfm}

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dbedtCep.Field.EditMask := '99999\-999;1;_';
  dbedtTelefone.Field.EditMask := '!\(99\)9999-9999;1;_';
  dbedtCelular.Field.EditMask  := '!\(99\)99999-9999;1;_';
  dbedtCodCli.Field.EditMask   := '0000;1;_';
  dbedtDataNasc.Field.EditMask := '!99/99/0000;1;_';
end;

procedure TfrmCliente.tbtnNovoClick(Sender: TObject);
begin
  inherited;
  dbedtNome.SetFocus;
end;

procedure TfrmCliente.tbtnSalvarClick(Sender: TObject);
begin
  if dtsCadastro.DataSet.FieldByName('NOME_CLI').AsString = EmptyStr then
  begin
    MessageDlg('Favor preenhcer o campo "Nome"!', mtInformation, [mbOk],0);
    dbedtNome.SetFocus;
    exit;
  end;  
  if dtsCadastro.DataSet.State in [dsInsert] then
    dtsCadastro.DataSet.FieldByName('COD_CLI').AsInteger := GeraProxID('COD_CLI','CLIENTE');

  inherited;

end;

procedure TfrmCliente.tbtnPesquisarClick(Sender: TObject);
begin
  inherited;
  if(frmPesqClientes = nil) then
  begin
    try
      frmPesqClientes := TfrmPesqClientes.Create(Self);
      frmPesqClientes.ShowModal;
    finally
      FreeAndNil(frmPesqClientes);
    end;
  end;
end;

end.

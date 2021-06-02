unit ufrmCadGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ToolWin, ComCtrls, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBands, ppCache, ppDesignLayer, ppParameter;

type
  TfrmCadGen = class(TForm)
    dtsCadastro: TDataSource;
    ToolBar1: TToolBar;
    tbtnNovo: TToolButton;
    tbtnEditar: TToolButton;
    tbtnDeletar: TToolButton;
    ToolButton1: TToolButton;
    tbtnSalvar: TToolButton;
    ToolButton3: TToolButton;
    tbtnImprimir: TToolButton;
    ToolButton4: TToolButton;
    tbtnFechar: TToolButton;
    ImageListCadastro: TImageList;
    DBNavigator1: TDBNavigator;
    tbtnCancelar: TToolButton;
    grpbCadGen: TGroupBox;
    ToolButton2: TToolButton;
    tbtnPesquisar: TToolButton;
    ppRepCadastro: TppReport;
    ppDBPpCadastro: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    procedure tbtnNovoClick(Sender: TObject);
    procedure tbtnEditarClick(Sender: TObject);
    procedure tbtnDeletarClick(Sender: TObject);
    procedure tbtnFecharClick(Sender: TObject);
    procedure tbtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbtnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tbtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure TrataBotoes();
    function GeraProxID (sCampo: string; sTabela: string) : Integer;
    { Public declarations }
  end;

var
  frmCadGen: TfrmCadGen;

implementation

uses uDm;

{$R *.dfm}

procedure TfrmCadGen.tbtnNovoClick(Sender: TObject);
begin
  TrataBotoes;
  dtsCadastro.DataSet.Append;
end;

procedure TfrmCadGen.tbtnEditarClick(Sender: TObject);
begin
  if dtsCadastro.DataSet.RecordCount > 0 then
  begin
    TrataBotoes;
    dtsCadastro.DataSet.Edit;
  end
  else
  begin
    MessageDlg('Nenhum registro para ser editado!',mtWarning, [mbOk],0);
    exit;
  end;  
end;

procedure TfrmCadGen.tbtnDeletarClick(Sender: TObject);
begin
  if dtsCadastro.DataSet.RecordCount > 0 then
  begin
    if MessageDlg('Deseja realmente apagar o registro?',mtConfirmation,
      [mbYes,mbNo],0) = mrYes then
    begin
      dtsCadastro.DataSet.Delete;
      TClientDataSet(dtsCadastro.DataSet).ApplyUpdates(0);
    end
    else
      dtsCadastro.DataSet.Cancel;
  end
  else
  begin
    MessageDlg('Nenhum registro para ser apagado!',mtWarning, [mbOk],0);
    exit;
  end;
end;

procedure TfrmCadGen.tbtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadGen.TrataBotoes;
begin
  tbtnNovo.Enabled      := not tbtnNovo.Enabled;
  tbtnEditar.Enabled    := not tbtnEditar.Enabled;
  tbtnCancelar.Enabled  := not tbtnCancelar.Enabled;
  tbtnDeletar.Enabled   := not tbtnDeletar.Enabled;
  tbtnSalvar.Enabled    := not tbtnSalvar.Enabled;
  tbtnImprimir.Enabled  := not tbtnImprimir.Enabled;
  tbtnPesquisar.Enabled := not tbtnPesquisar.Enabled;
  tbtnFechar.Enabled    := not tbtnFechar.Enabled;
  grpbCadGen.Enabled    := not grpbCadGen.Enabled;
end;

procedure TfrmCadGen.tbtnCancelarClick(Sender: TObject);
begin
  dtsCadastro.DataSet.Cancel;
  TrataBotoes;
end;

procedure TfrmCadGen.FormCreate(Sender: TObject);
begin
  dtsCadastro.DataSet.Open;
  dtsCadastro.DataSet.First;
end;

procedure TfrmCadGen.tbtnSalvarClick(Sender: TObject);
begin
  dtsCadastro.DataSet.Post;
  TClientDataSet(dtsCadastro.DataSet).ApplyUpdates(0);
  TrataBotoes;
end;

procedure TfrmCadGen.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then //Envia o foco pro próximo objeto pressionando ENTER
    Perform(WM_NEXTDLGCTL,0,0)
  else
  if key =#27 then //Fecha a janela pressionando ESC
    Close;
end;

function TfrmCadGen.GeraProxID(sCampo: string; sTabela: string): Integer;
var
  ID_Gen : Integer;
begin
  Dm.CdsGeraID.Close;
  Dm.CdsGeraID.CommandText := 'Select Max('+sCampo+') ID From '+sTabela;
  Dm.CdsGeraID.Open;

  ID_Gen := Dm.CdsGeraID.FieldByName('ID').AsInteger + 1;
  Result := ID_Gen;
end;

procedure TfrmCadGen.tbtnImprimirClick(Sender: TObject);
begin
  ppRepCadastro.Print;
end;

procedure TfrmCadGen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('É necessário "Salvar" ou "Cancelar" o registro!',mtInformation,
               [mbOk],0);
    abort;
  end;  
end;

end.

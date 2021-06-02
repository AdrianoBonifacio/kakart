unit ufrmLembretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadGen, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, DB, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, Mask, DBClient;

type
  TfrmLembretes = class(TfrmCadGen)
    Label3: TLabel;
    Label4: TLabel;
    dbedtDtLemb: TDBEdit;
    dbedtHrLemb: TDBEdit;
    MonthCalendar1: TMonthCalendar;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure tbtnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tbtnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLembretes: TfrmLembretes;

implementation

uses uDm;

{$R *.dfm}

procedure TfrmLembretes.MonthCalendar1Click(Sender: TObject);
begin
  inherited;
  dbedtDtLemb.Text := FormatDateTime('dd/MM/yy',MonthCalendar1.Date);
end;

procedure TfrmLembretes.tbtnSalvarClick(Sender: TObject);
begin
  if dtsCadastro.DataSet.State in [dsInsert] then
    dtsCadastro.DataSet.FieldByName('COD_LEMBRETE').AsInteger := GeraProxID('COD_LEMBRETE','LEMBRETE');
    
  inherited;

end;

procedure TfrmLembretes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;

  if dtsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    if Application.MessageBox('     Deseja realmente cancelar '+#13+
                              '           esse Lembrete?',
                          'Lembrete', MB_YESNO) = mrYes then
      tbtnCancelarClick(Sender)
    else
      abort;
  end;
end;

procedure TfrmLembretes.FormShow(Sender: TObject);
begin
 { inherited; }

  MonthCalendar1.Date := Now;
  dbedtDtLemb.SetFocus;
  dbedtDtLemb.SelectAll;
  dbedtHrLemb.Field.EditMask := '!90:00;1;_';
end;

procedure TfrmLembretes.tbtnDeletarClick(Sender: TObject);
begin
{  inherited;  }

  if dtsCadastro.DataSet.RecordCount > 0 then
  begin
    if MessageDlg('Deseja, realmente, apagar o registro?',mtConfirmation,
      [mbYes,mbNo],0) = mrYes then
    begin
      dtsCadastro.DataSet.Delete;
    end
    else
      dtsCadastro.DataSet.Cancel;

    TClientDataSet(dtsCadastro.DataSet).ApplyUpdates(0);
      
  end
  else
  begin
    MessageDlg('Nenhum registro para ser apagado!',mtWarning, [mbOk],0);
    exit;
  end;
end;

end.

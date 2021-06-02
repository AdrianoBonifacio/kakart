unit ufrmControleVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, Buttons;

type
  TfrmControleVendas = class(TForm)
    GroupBox1: TGroupBox;
    MonthCalendarVendas: TMonthCalendar;
    DBGrid1: TDBGrid;
    dtsRegistros: TDataSource;
    dtsDiasMov: TDataSource;
    Label1: TLabel;
    lblSaldo: TLabel;
    ppDBPpVendaDia: TppDBPipeline;
    ppRepCadastro: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pplTitulo: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    spbRelatorio: TSpeedButton;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppDBPpVendaDiappField12: TppField;
    procedure MonthCalendarVendasGetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure MonthCalendarVendasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtsRegistrosStateChange(Sender: TObject);
    procedure dtsRegistrosUpdateData(Sender: TObject);
    procedure spbRelatorioClick(Sender: TObject);
  private
    procedure Atualiza_Calendario(DataPesquisa: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleVendas: TfrmControleVendas;

implementation

uses uDm, Math;

{$R *.dfm}

procedure TfrmControleVendas.MonthCalendarVendasGetMonthInfo(Sender: TObject;
  Month: Cardinal; var MonthBoldInfo: Cardinal);
var
  dia, mes, ano: word;
  dias: array of longword;
begin
  DecodeDate(MonthCalendarVendas.date, ano, mes, dia);

  Dm.CdsDiasMov.Close;
  Dm.CdsDiasMov.Params.ParamByName('pMes').AsInteger := Month;
  Dm.CdsDiasMov.Params.ParamByName('pAno').AsInteger := ano;
  Dm.CdsDiasMov.Open;

  if (dm.CdsDiasMov.RecordCount > 0) then
  begin
   SetLength(dias, dm.CdsDiasMov.RecordCount);

    Dm.CdsDiasMov.First;

   while not dm.CdsDiasMov.Eof do
   begin
     dias[dm.CdsDiasMov.RecNo-1] := dm.CdsDiasMov.FieldByName('dia').AsInteger;
     dm.CdsDiasMov.Next;
   end;

    MonthCalendarVendas.BoldDays(dias, MonthBoldInfo);
  end;
end;

procedure TfrmControleVendas.MonthCalendarVendasClick(Sender: TObject);
begin
  Atualiza_Calendario(MonthCalendarVendas.Date);

  if Dm.CdsMov.RecordCount > 0 then
    spbRelatorio.Enabled := True
  else
    spbRelatorio.Enabled := false
end;

procedure TfrmControleVendas.Atualiza_Calendario(DataPesquisa: TDateTime);
begin
  Dm.CdsMov.Close;
  Dm.CdsMov.Params.ParamByName('pDataMov').Value := DataPesquisa;
  Dm.CdsMov.Open;
end;

procedure TfrmControleVendas.FormShow(Sender: TObject);
begin
  MonthCalendarVendas.Date := Now;
  Atualiza_Calendario(Now);

  MonthCalendarVendasClick(Sender);
end;

procedure TfrmControleVendas.dtsRegistrosStateChange(Sender: TObject);
var
  Total: Double;
begin
  if (dtsRegistros.State in [dsBrowse]) then
  begin
    Total := 0;
    if(dtsRegistros.DataSet.RecordCount >0) then
    begin
      dtsRegistros.DataSet.first;
      while not(dtsRegistros.DataSet.Eof) do
      begin
        Total := Total + dtsRegistros.DataSet.FieldByName('VLR_TOT_REG').AsFloat;

        lblSaldo.Caption := FormatFloat('R$ ###,##0.00', Total);
        
        dtsRegistros.DataSet.Next;
      end;
    end;
  end
  else
  lblSaldo.Caption := 'R$ 0,00';
end;

procedure TfrmControleVendas.dtsRegistrosUpdateData(Sender: TObject);
begin
  dtsRegistros.DataSet.FieldByName('DATA_REG').Value := MonthCalendarVendas.Date;
end;

procedure TfrmControleVendas.spbRelatorioClick(Sender: TObject);
begin
  ppRepCadastro.Print;
end;

end.

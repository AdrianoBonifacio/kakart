unit ufrmPesGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Buttons, StdCtrls;

type
  TfrmPesqGen = class(TForm)
    GroupBox1: TGroupBox;
    edtPesquisar: TEdit;
    dbGridPesquisar: TDBGrid;
    dtsPesquisar: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PesquisaLike(Nome_Campo: String; Texto: String);
    { Public declarations }
  end;

var
  frmPesqGen: TfrmPesqGen;

implementation

uses uDm;

{$R *.dfm}

procedure TfrmPesqGen.PesquisaLike(Nome_Campo, Texto: String);
begin
  with dtsPesquisar.DataSet do
  begin
    Filtered := false;
    Filter   := '('+Nome_Campo+' like '+QuotedStr(Texto+'%')+')';
    Filtered := true;
  end;
end;

procedure TfrmPesqGen.FormCreate(Sender: TObject);
begin
  dtsPesquisar.DataSet.Close;
  dtsPesquisar.DataSet.Open;
  edtPesquisar.Clear;
end;

end.

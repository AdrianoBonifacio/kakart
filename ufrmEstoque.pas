unit ufrmEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCadGen, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, DB, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, Grids, DBGrids, ppCtrls, ppPrnabl;

type
  TfrmEstoque = class(TfrmCadGen)
    DBGrid1: TDBGrid;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    procedure tbtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

uses uDm, ufmPesqEstoque, ufrmPesGen, ufrmProduto;

{$R *.dfm}

procedure TfrmEstoque.tbtnPesquisarClick(Sender: TObject);
begin
  inherited;
  if(frmPesquisa = nil) then
  begin
    try
      frmPesquisa := TfrmPesquisa.Create(Self);
      frmPesquisa.ShowModal;
    finally
      FreeAndNil(frmPesquisa);  
    end;
  end;
end;

end.

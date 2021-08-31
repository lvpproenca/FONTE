unit UConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsultaProdutos = class(TForm)
    pnDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    gridPesquisa: TDBGrid;
    SBCodigo: TSearchBox;
    SBDescricao: TSearchBox;
    pnRodape: TPanel;
    btnPesquisar: TButton;
    FDQPesquisa: TFDQuery;
    DsPesquisa: TDataSource;
    procedure SBCodigoInvokeSearch(Sender: TObject);
    procedure gridPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProdutos: TfrmConsultaProdutos;

implementation

{$R *.dfm}

uses UDM, UVendas;

procedure TfrmConsultaProdutos.btnPesquisarClick(Sender: TObject);
begin
  if FDQPesquisa.IsEmpty then
    Exit;

  FrmVendas.CDSItemsPedidocodprod.AsString := FDQPesquisa.FieldByName('CODIGO').AsString;
  FrmVendas.CDSItemsPedidodescricao.AsString := FDQPesquisa.FieldByName('DESCRICAO').AsString;
  FrmVendas.CDSItemsPedidovalor.AsCurrency := FDQPesquisa.FieldByName('PRECOVENDA').AsCurrency;

  Close;
end;

procedure TfrmConsultaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmConsultaProdutos.FormShow(Sender: TObject);
begin
  SBDescricao.SetFocus;
end;

procedure TfrmConsultaProdutos.gridPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if FDQPesquisa.IsEmpty then
      Exit
    else
      btnPesquisarClick(Self);
end;

procedure TfrmConsultaProdutos.SBCodigoInvokeSearch(Sender: TObject);
var
  sql : string;
begin
  FDQPesquisa.Close;
  FDQPesquisa.SQL.Clear;
  FDQPesquisa.SQL.Add('SELECT CODIGO, DESCRICAO, PRECOVENDA FROM PRODUTOS');

  sql := '';
  if SBCodigo.Text <> '' then
  begin
    if sql = '' then
      sql := ' WHERE CODIGO LIKE '+QuotedStr('%'+SBCodigo.Text+'%');

    FDQPesquisa.SQL.Add(sql);
  end;


  if SBDescricao.Text <> '' then
  begin
    if sql = '' then
      sql := ' WHERE DESCRICAO LIKE '+QuotedStr('%'+SBDescricao.Text+'%')
    else
      sql := ' AND DESCRICAO LIKE '+QuotedStr('%'+SBDescricao.Text+'%');

    FDQPesquisa.SQL.Add(sql);
  end;

  FDQPesquisa.SQL.Add(' ORDER BY CODIGO');
  FDQPesquisa.Open;

  gridPesquisa.SetFocus;
end;

end.

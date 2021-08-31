unit UDM;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, Data.DB, Classe.Conexao;

type
  TDM = class(TDataModule)
    CN: TFDConnection;
    TR: TFDTransaction;
    WT: TFDGUIxWaitCursor;
    DL: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Conexao : TConexao;
  end;

var
  DM: TDM;

implementation

uses
  System.SysUtils, Vcl.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  //usa a DLL pra fazer a conexão com o banco.
  DL.VendorLib := ExtractFilePath(Application.ExeName)+'libmysql.dll';
  //classe conexão
  Conexao := TConexao.Create(CN);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Destroy;
end;

end.

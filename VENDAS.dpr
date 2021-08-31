program VENDAS;

uses
  Vcl.Forms,
  UVendas in 'UVendas.pas' {FrmVendas},
  UDM in 'UDM.pas' {DM: TDataModule},
  Classe.Conexao in 'Classe.Conexao.pas',
  System.SysUtils,
  ClassePedidos in 'ClassePedidos.pas',
  UPesquisaClientes in 'UPesquisaClientes.pas' {frmPesquisaClientes},
  UConsultaProdutos in 'UConsultaProdutos.pas' {frmConsultaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  if DM.Conexao.ConectarBanco then
  begin
    Application.CreateForm(TFrmVendas, FrmVendas);
    Application.Run;
  end
  else
    raise exception.Create('N�o foi poss�vel realizar a conex�o com o banco de dados!'+#13+'Aplica��o finalizada.');
end.

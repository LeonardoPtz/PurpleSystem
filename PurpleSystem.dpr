program PurpleSystem;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uUsuarios in 'uUsuarios.pas' {FrmUsuarios},
  uDM in 'uDM.pas' {FrmDM},
  uFuncoesLog in 'uFuncoesLog.pas',
  uCadastroProdutos in 'uCadastroProdutos.pas' {FrmCadastroProdutos},
  uCadastroClientes in 'uCadastroClientes.pas' {FrmCadastroClientes},
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {FrmCadastroUsuarios},
  uNovoUsuario in 'uNovoUsuario.pas' {FrmNovoUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {$IFNDEF Debug}
  Application.CreateForm(TFrmUsuarios, FrmUsuarios);
  {$ENDIF}
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmDM, FrmDM);
  FrmDM.LerConexaoBase(tpPro);

  Application.Run;
end.

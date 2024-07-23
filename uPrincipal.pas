unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Buttons, uCadastroProdutos, Vcl.ComCtrls, uCadastroClientes, uCadastroUsuarios;

type
  TFrmPrincipal = class(TForm)
    PainelMenu: TPanel;
    PainelCentral: TPanel;
    BtnConfig: TSpeedButton;
    BtnProdutos: TSpeedButton;
    BtnClientes: TSpeedButton;
    BtnUsuarios: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnClientesClick(Sender: TObject);
    procedure BtnProdutosClick(Sender: TObject);
    procedure BtnUsuariosClick(Sender: TObject);

  private
    procedure AbrirCadastroDeProdutos;
    procedure AbrirCadastroDeClientes;
    procedure AbrirCadastroDeUsuarios;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnClientesClick(Sender: TObject);
begin
  AbrirCadastroDeClientes;
end;

procedure TFrmPrincipal.AbrirCadastroDeClientes;
begin

  if Assigned(FrmCadastroProdutos) then
    FrmCadastroProdutos.Fechar;

  if Assigned(FrmCadastroUsuarios) then
    FrmCadastroUsuarios.FecharUsuarios;

  if not (Assigned(FrmCadastroClientes)) then
  begin
    FrmCadastroClientes := TFrmCadastroClientes.Create(nil);
    FrmCadastroClientes.Parent := PainelCentral;
    FrmCadastroClientes.BorderStyle := bsNone;
    FrmCadastroClientes.Align := alClient;
    FrmCadastroClientes.Show;
  end
  else
  if Assigned(FrmCadastroClientes) then
    FrmCadastroClientes.FecharClientes;
end;


procedure TFrmPrincipal.BtnProdutosClick(Sender: TObject);
begin
  AbrirCadastroDeProdutos;
end;

procedure TFrmPrincipal.AbrirCadastroDeProdutos;
begin

  if Assigned(FrmCadastroClientes) then
    FrmCadastroClientes.FecharClientes;

  if Assigned(FrmCadastroUsuarios) then
    FrmCadastroUsuarios.FecharUsuarios;

  if not (Assigned(FrmCadastroProdutos)) then
  begin
    FrmCadastroProdutos := TFrmCadastroProdutos.Create(nil);
    FrmCadastroProdutos.Parent := PainelCentral;
    FrmCadastroProdutos.BorderStyle := bsNone;
    FrmCadastroProdutos.Align := alClient;
    FrmCadastroProdutos.Show;
  end
  else
  if Assigned(FrmCadastroProdutos) then
    FrmCadastroProdutos.Fechar;
end;


procedure TFrmPrincipal.BtnUsuariosClick(Sender: TObject);
begin
   AbrirCadastroDeUsuarios;
end;

procedure TFrmPrincipal.AbrirCadastroDeUsuarios;
begin
  if Assigned(FrmCadastroProdutos) then
    FrmCadastroProdutos.Fechar;

  if Assigned(FrmCadastroClientes) then
    FrmCadastroClientes.FecharClientes;

  if not (Assigned(FrmCadastroUsuarios)) then
  begin
    FrmCadastroUsuarios := TFrmCadastroUsuarios.Create(nil);
    FrmCadastroUsuarios.Parent := PainelCentral;
    FrmCadastroUsuarios.BorderStyle := bsNone;
    FrmCadastroUsuarios.Align := alClient;
    FrmCadastroUsuarios.Show;
  end
  else
  if Assigned(FrmCadastroUsuarios) then
    FrmCadastroUsuarios.FecharUsuarios;

end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;
end.

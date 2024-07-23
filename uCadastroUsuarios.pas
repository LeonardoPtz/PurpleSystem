unit uCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uNovoUsuario;

type
  TFrmCadastroUsuarios = class(TForm)
    PnBotoes: TPanel;
    BtnFicha: TSpeedButton;
    BtnNovo: TSpeedButton;
    BtnApagar: TSpeedButton;
    PnEstoque: TPanel;
    LbCadastroDeUsuarios: TLabel;
    PnListagem: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
  private
    procedure AbrirNovoUsuario;
  public
    procedure FecharUsuarios;
  end;

var
  FrmCadastroUsuarios: TFrmCadastroUsuarios;

implementation

{$R *.dfm}

{ TFrmCadastroUsuarios }

procedure TFrmCadastroUsuarios.BtnNovoClick(Sender: TObject);
begin
  AbrirNovoUsuario;
end;

procedure TFrmCadastroUsuarios.AbrirNovoUsuario;
begin
  FrmNovoUsuario:=TFrmNovoUsuario.Create(self);
  FrmNovoUsuario.ShowModal;
    try

    finally
        FrmNovoUsuario.Free;
        FrmCadastroUsuarios:=nil;
    end;
end;

procedure TFrmCadastroUsuarios.FecharUsuarios;
begin
  Close;
end;

procedure TFrmCadastroUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmCadastroUsuarios:= nil;
end;

end.

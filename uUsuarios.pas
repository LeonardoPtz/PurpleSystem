unit uUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uPrincipal, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmUsuarios = class(TForm)
    EdtSenha: TEdit;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    BtnEntrar: TButton;
    BtnFechar: TButton;
    Login: TLabel;
    CbUsuario: TComboBox;
    QrUsuario: TFDQuery;
    Image1: TImage;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure CarregarUsuarios;
    function Entrar : Boolean;
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

procedure TFrmUsuarios.BtnEntrarClick(Sender: TObject);
begin
  if Entrar() then
  begin
    FrmPrincipal.Show;
    self.Hide;
  end


  else
  begin
    ShowMessage('Senha não confere');
    EdtSenha.SetFocus;
  end;

end;

procedure TFrmUsuarios.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmUsuarios.CarregarUsuarios;
begin
  CbUsuario.Clear;

  QrUsuario.SQL.Text := 'select usuario from usuarios';
  QrUsuario.Active := True;

  while not(QrUsuario.Eof) do
  begin
    CbUsuario.Items.Add(QrUsuario.FieldByName('usuario').AsString);
    QrUsuario.Next;
  end;
end;

procedure TFrmUsuarios.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BtnEntrarClick(Sender);
end;

function TFrmUsuarios.Entrar : Boolean;
var QueryLogin : TFDQuery;

begin
  Result := False;
  QueryLogin := TFDQuery.Create(nil);
  QueryLogin.Connection := FrmDM.FDConnection1;

  try
    QueryLogin.SQL.Text := 'select id from usuarios where usuario = :usuario '+
                           'and senha = :senha';

    QueryLogin.ParamByName('usuario').AsString := CbUsuario.Text;
    QueryLogin.ParamByName('senha').AsString := EdtSenha.Text;
    QueryLogin.Active := True;

    Result := QueryLogin.RecordCount > 0;

  finally
    QueryLogin.Free;
  end;
end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
begin
  CarregarUsuarios();
end;

end.

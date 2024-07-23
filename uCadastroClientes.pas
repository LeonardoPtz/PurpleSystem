unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDM, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadastroClientes = class(TForm)
    PnBotoes: TPanel;
    BtnFicha: TSpeedButton;
    BtnNovo: TSpeedButton;
    BtnApagar: TSpeedButton;
    PnClientes: TPanel;
    LbCadastroDeClientes: TLabel;
    PnListagem: TPanel;
    QrClientes: TFDQuery;
    DataSourceClientes: TDataSource;
    GrdClientes: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure FecharClientes;
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

{$R *.dfm}

procedure TFrmCadastroClientes.FecharClientes;
begin
close;
end;

procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmCadastroClientes:= nil;
end;

end.

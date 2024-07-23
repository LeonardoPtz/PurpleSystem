unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uDM, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;

type
  TFrmCadastroProdutos = class(TForm)
    PnListagem: TPanel;
    PnBotoes: TPanel;
    GrdEstoque: TDBGrid;
    QrEstoque: TFDQuery;
    DataEstoque: TDataSource;
    PnEstoque: TPanel;
    LbCadastroDeProdutos: TLabel;
    BtnFicha: TSpeedButton;
    BtnNovo: TSpeedButton;
    BtnApagar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Fechar;
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

{$R *.dfm}

procedure TFrmCadastroProdutos.Fechar;
begin
close;
end;

procedure TFrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmCadastroProdutos:= nil;
end;

end.

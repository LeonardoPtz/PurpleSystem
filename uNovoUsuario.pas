unit uNovoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmNovoUsuario = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    PnBotoes: TPanel;
    BtnFicha: TSpeedButton;
    BtnNovo: TSpeedButton;
    BtnApagar: TSpeedButton;
    LabeledEdit3: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNovoUsuario: TFrmNovoUsuario;

implementation

{$R *.dfm}

end.

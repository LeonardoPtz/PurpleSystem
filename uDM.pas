unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
TTipoSistema = (tpPro, tpSlim, tpMicro);
  TFrmDM = class(TForm)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    procedure LerConexaoBase(sistema :TTipoSistema);
  end;

var
  FrmDM: TFrmDM;

implementation
uses System.IniFiles, uFuncoesLog;

{$R *.dfm}

{ TFrmDM }

procedure TFrmDM.LerConexaoBase(sistema: TTipoSistema);
var UsualG : TIniFile;
    Diretorio : string;
begin
  case sistema of
      tpPro: Diretorio := 'C:\GDOOR Sistemas\GDOOR PRO\USUALG.INI' ;
      tpSlim: Diretorio := 'C:\GDOOR Sistemas\GDOOR SLIM\USUALG.INI' ;
      tpMicro: Diretorio := 'C:\GDOOR Sistemas\GDOOR MEI\USUALG.INI';
  end;

  UsualG := TIniFile.Create(Diretorio);
  try
   FDConnection1.Params.Database := UsualG.ReadString('BASE','DIR','')+'DATAGES.FDB';
   FDConnection1.Params.UserName := 'SYSDBA';
   FDConnection1.Params.Password := 'masterkey';
   FDConnection1.Params.Add('Protocol=TCPIP');
   FDConnection1.Params.Add ('Port=3050');
   FDConnection1.Params.Add('Server='+UsualG.ReadString('BASE','LOCAL', '127.0.0.1'));

   try
      FDConnection1.Connected := True;
   except on E: Exception do
    begin
      GravarLog(e.Message);
      raise Exception.Create('Ocorreu um erro ao ler os dados do UsualG');
    end;
   end;



  finally
    UsualG.Free;
  end;
end;

end.

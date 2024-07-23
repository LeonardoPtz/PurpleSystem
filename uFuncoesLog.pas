unit uFuncoesLog;

interface

procedure GravarLog (erro:string);

implementation

uses
  System.Classes, System.SysUtils;

procedure GravarLog (erro:string);
var ArquivoLog : TStringList;
    diretorio : string;
begin
  ArquivoLog := TStringList.Create;
  try
    ArquivoLog.Text := erro;

    diretorio := ExtractFilePath(ParamStr(0))+'log.txt';

    ArquivoLog.SaveToFile(diretorio);
  finally
    ArquivoLog.Free;
  end;
end;

end.

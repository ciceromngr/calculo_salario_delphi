program Project1;

uses
  Vcl.Forms,
  View.Form1 in 'src\View.Form1.pas' {CalcularSalario},
  Classes.trabalhador in 'src\Classes.trabalhador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalcularSalario, CalcularSalario);
  Application.Run;
end.

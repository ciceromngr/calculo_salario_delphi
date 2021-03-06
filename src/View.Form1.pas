unit View.Form1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCalcularSalario = class(TForm)
    calcular: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DescontoINSS: TLabel;
    DescontoIRRF: TLabel;
    Edit3: TEdit;
    SalarioLiquido: TLabel;
    Edit4: TEdit;
    DigiteValorSalarioBruto: TLabel;
    procedure calcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalcularSalario: TCalcularSalario;

implementation

{$R *.dfm}

uses Classes.trabalhador;

procedure TCalcularSalario.calcularClick(Sender: TObject);
var
  lTrabalhador : TTrabalhador;
  ValorINSSFormatado, ValorIRRFFormatado, ValorLiquidoSalarioFormatado: double;
begin
  lTrabalhador := TTrabalhador.Create;
  lTrabalhador.Salario := StrToFloat(Edit1.Text);
  ValorINSSFormatado := StrToFloat(FormatFloat('#0.00',lTrabalhador.CalcularINSS));
  ValorIRRFFormatado := StrToFloat(FormatFloat('#0.00',lTrabalhador.CalcularIRRF));
  ValorLiquidoSalarioFormatado := StrToFloat(FormatFloat('#0.00',lTrabalhador.SalarioLiquido));

  Edit2.Text := FloatToStr(valorINSSFormatado);
  Edit3.Text := FloatToStr(ValorIRRFFormatado);
  Edit4.Text := FloatToStr(ValorLiquidoSalarioFormatado);
end;
end.

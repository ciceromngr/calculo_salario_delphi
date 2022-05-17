unit Classes.trabalhador;

interface
type
  TTrabalhador = class
    private
      FSalario: double;
      procedure SetSalario(const Value: double);
      function GetSalario: double;
    public
      property Salario: double read FSalario write SetSalario;
      function CalcularINSS: double;
      function CalcularIRRF: double;
      function SalarioLiquido: double;
  end;
implementation
function TTrabalhador.CalcularINSS: double;
var
  ValorSalario, ResultadoINSS: Double;
begin
  ValorSalario := Self.FSalario;
  if ValorSalario <= 1100 then
      ResultadoINSS := Self.FSalario/7.5
  else if ((ValorSalario >= 1101) and (ValorSalario <= 2202)) then
      ResultadoINSS := Self.FSalario / 9
  else if ((ValorSalario >= 2203) and (ValorSalario <= 3304)) then
      ResultadoINSS := Self.FSalario / 12
  else begin
      ResultadoINSS := Self.FSalario/14
  end;
  Result := ResultadoINSS;
end;

function TTrabalhador.CalcularIRRF: double;
var
  ResultadoIRRF: double;
begin
  if Self.FSalario <= 1903 then
      ResultadoIRRF := 0.0
  else if ((Self.FSalario >= 1904)and(Self.FSalario <= 2825)) then
      ResultadoIRRF := Self.FSalario/7.5
  else if ((Self.FSalario >= 2826)and (Self.FSalario <= 3750)) then
      ResultadoIRRF :=  Self.FSalario/15
  else if ((Self.FSalario >= 3751)and(Self.FSalario <= 3751)) then
      ResultadoIRRF := Self.FSalario/22.5
  else begin
      ResultadoIRRF := self.FSalario/27.5
  end;
  Result := ResultadoIRRF;
end;

function TTrabalhador.GetSalario: double;
begin
  Result  := FSalario;
end;

function TTrabalhador.SalarioLiquido: double;
var
  ResultadoSalarioLiquido: double;
  ValorIRRF, ValorINSS: double;
begin
  ValorINSS := CalcularINSS;
  ValorIRRF := CalcularIRRF;
  ResultadoSalarioLiquido := Self.FSalario - ValorINSS - ValorIRRF;
  Result := ResultadoSalarioLiquido;
end;

procedure TTrabalhador.SetSalario(const Value: double);
begin
  FSalario := Value;
end;

end.

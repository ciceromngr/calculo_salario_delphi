# Calcular o salario em Delphi

## Exercitando a criação de classes e seus methods, e suas properties e functions: 🔥🚀
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

## Estruturas Condicionais utilizando o if else: 🔥🚀
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

## Formatando Numeros flutuantes: 🔥🔥🔥
    ValorLiquidoSalarioFormatado := StrToFloat(FormatFloat('#0.00',lTrabalhador.SalarioLiquido));

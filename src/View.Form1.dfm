object CalcularSalario: TCalcularSalario
  Left = 0
  Top = 0
  Caption = 'CalcularSalario'
  ClientHeight = 193
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DescontoINSS: TLabel
    Left = 199
    Top = 8
    Width = 68
    Height = 13
    Caption = 'DescontoINSS'
  end
  object DescontoIRRF: TLabel
    Left = 199
    Top = 66
    Width = 69
    Height = 13
    Caption = 'DescontoIRRF'
  end
  object SalarioLiquido: TLabel
    Left = 199
    Top = 122
    Width = 65
    Height = 13
    Caption = 'SalarioLiquido'
  end
  object DigiteValorSalarioBruto: TLabel
    Left = 8
    Top = 8
    Width = 109
    Height = 13
    Caption = 'DigiteValorSalarioBruto'
  end
  object calcular: TButton
    Left = 8
    Top = 61
    Width = 153
    Height = 25
    Caption = 'calcular'
    TabOrder = 0
    OnClick = calcularClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 153
    Height = 21
    TabOrder = 1
    TextHint = '0,00'
  end
  object Edit2: TEdit
    Left = 199
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = '0,00'
  end
  object Edit3: TEdit
    Left = 199
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = '0,00'
  end
  object Edit4: TEdit
    Left = 199
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = '0,0'
  end
end

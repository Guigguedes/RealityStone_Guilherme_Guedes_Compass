require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

               #Testando a soma 
    it('Deve somar dois inteiros positivos') do
        expect(calculadora.soma(4, 5)).to eq 9
    end

    it('Deve somar um número qualquer com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
    end
    
    it('Deve somar um número qualquer com um número negativo') do
        expect(calculadora.soma(9, -5)).to eq 4
    end

    it('Deve somar dois números negativos') do
        expect(calculadora.soma(-7, -13)).to eq -20
    end

    it('Deve somar um número qualquer com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
    end

                #testando a subtração

    it('Deve subtrair dois números inteiros positivos') do
        expect(calculadora.subtracao(19, 5)).to eq 14
    end

    it('Deve subtrair dois números inteiro negativos') do
        expect(calculadora.subtracao(-13, -6)).to eq -7
    end

    it('Deve subtrair um número qualquer com 0') do
        expect(calculadora.subtracao(-13, 0)).to eq -13
    end

    it('Deve subtrair um número positivo e um negativo') do
        expect(calculadora.subtracao(5, -6)).to eq 11
    end

                #testando a multiplicação

    it('Deve multiplicar dois números positivos') do
        expect(calculadora.multiplicacao(5, 8)).to eq 40
    end

    it('Deve multiplicar dois números negativos') do
        expect(calculadora.multiplicacao(-3, -6)).to eq 18
    end

    it('Deve multiplicar um número positivo e um negativo') do
        expect(calculadora.multiplicacao(5, -6)).to eq -30
    end

    it('Deve multiplicar um número positivo com 0') do
        expect(calculadora.multiplicacao(7, 0)).to eq 0
    end

    it('Deve multiplicar um número negativo com 0') do
        expect(calculadora.multiplicacao(-7, 0)).to eq 0
    end

                    #testando a divisão
                    
    it('Deve dividir dois números inteiros positivos') do
        expect(calculadora.divisao(55, 11)).to eq 5
    end

    it('Deve dividir dois números inteiros negativos') do
        expect(calculadora.divisao(-36, -6)).to eq 6
    end

    it('Deve dividir um número positivo e um número negativo') do
        expect(calculadora.divisao(81, -9)).to eq -9
    end

    it('Deve dividir um número por 0') do
        expect(calculadora.divisao(15, 0)).to eq 'Não é possível fazer uma divisão por 0.'
    end

                    #testando a raiz

    it('Deve calcular a raiz quadrada de um número positivo') do
        expect(calculadora.raiz(64)).to eq 8
    end

    it('Deve calcular a raiz quadrada de um número neagativo') do
        expect(calculadora.raiz(-64)).to eq 'Não é possível calcular a raiz quadrada de um número negativo!'
    end

    it('Deve calcular a raiz quadrada de 0') do
        expect(calculadora.raiz(0)).to eq 0
    end

                    #testando a potenciação

    it('Deve fazer a potenciação de dois números positivos') do
        expect(calculadora.potencia(8, 2)).to eq 64
    end

    it('Deve fazer a potenciação de um número positivo e um negativo') do
        expect(calculadora.potencia(-7, 3)).to eq -343
    end

    it('Deve fazer a potenciação de um número positivo e 0') do
        expect(calculadora.potencia(4, 0)).to eq 1
    end

    it('Deve fazer a potenciação de um número negativo e 0') do
        expect(calculadora.potencia(-9, 0)).to eq 1
    end

    it('Deve fazer a potenciação de 0 e um número positivo') do
        expect(calculadora.potencia(0, 5)).to eq 0
    end

end

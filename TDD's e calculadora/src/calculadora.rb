class Calculadora

    def soma(a, b)
        a + b
    end
    
    def subtracao(a, b)
        a - b
    end
    
    def multiplicacao(a, b)
        a * b
    end
    
    def divisao(a, b)
        a / b
    rescue ZeroDivisionError
        "Não é possível fazer uma divisão por 0."
    end

    def potencia(a, b)
        a ** b 
    end

    def raiz(a)
        Math.sqrt(a)
    rescue Math::DomainError
        'Não é possível calcular a raiz quadrada de um número negativo!'
    end


end
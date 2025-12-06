algoritmo "baskara"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Baskara:
    //
    // Fazer um programa para ler os três coeficientes de uma equação do
    // segundo grau. Usando a fórmula de Baskara, calcular e mostrar os
    // valores das raízes x1 e x2 da equação com quatro casas decimais,
    // conforme exemplo. Se a equação não possuir raízes reais, mostrar
    // uma mensagem.

var

    a, b, c, x1, x2, delta: real

inicio

    escreval("Programa para Calcular as Raízes Reais de uma Equação do 2º Grau")
    escreval()
    escreva("# Digite o valor de A: ")
    leia(a)

    se (a = 0) entao

        escreval()
        escreval("# A = 0.")
        escreval("  Não é uma equação do segundo grau.")

    senao

        escreva("# Digite o valor de B: ")
        leia(b)
        escreva("# Digite o valor de C: ")
        leia(c)

        delta <- exp(b, 2) - 4 * a * c

        se (delta < 0) entao

            escreval()
            escreval("# DELTA = ", delta, "(negativo).")
            escreval("  A equação não possui raízes reais.")

        senao

            x1 <- (-b + raizq(delta)) / (2 * a)
            x2 <- (-b - raizq(delta)) / (2 * a)

            escreval()
            escreval("# Raízes reais da equação:")
            escreval("  x1 = ", x1:1:4, ".")
            escreval("  x2 = ", x2:1:4, ".")

        fimse

    fimse

fimalgoritmo
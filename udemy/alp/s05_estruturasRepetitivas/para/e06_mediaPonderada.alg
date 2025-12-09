algoritmo "mediaPonderada"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Média Ponderada:
    //
    // Leia um valor inteiro N, que representa o número de casos de teste que
    // vem a seguir. Cada caso de teste consiste de 3 valores reais, para os
    // quais você deverá calcular e mostrar a média ponderada, sendo que o
    // primeiro valor tem peso 2, o segundo valor tem peso 3 e o terceiro valor
    // tem peso 5. Vale lembrar que a média ponderada é a soma de todos os
    // valores multiplicados pelo seu respectivo peso, dividida pela soma dos
    // pesos.

var

    i, n: inteiro
    num1, num2, num3, media: real
    msgIntroducao: caractere

inicio

    msgIntroducao <- "Programa para Calcular as Médias Ponderadas de Três"
    msgIntroducao <- msgIntroducao + " Números Reais"

    escreval(msgIntroducao)
    escreval()
    escreva("# Digite o número de casos: ")
    leia(n)

    para i de (1) ate (n) faca

        escreval()
        escreval("# Caso ", i, ":")
        escreva("  Digite o 1º número: ")
        leia(num1)
        escreva("  Digite o 2º número: ")
        leia(num2)
        escreva("  Digite o 3º número: ")
        leia(num3)

        media <- (2*num1 + 3*num2 + 5*num3) / (2 + 3 + 5)

        escreval("  Média ponderada (2, 3 e 5): ", media:1:1, ".")

    fimpara

fimalgoritmo
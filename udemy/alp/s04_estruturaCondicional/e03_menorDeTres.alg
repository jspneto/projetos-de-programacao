algoritmo "menorDeTres"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Menor de Três:
    //
    // Fazer um programa para ler três números inteiros. Em seguida, mostrar
    // qual o menor dentre os três números lidos. Em caso de empate, mostrar
    // apenas uma vez.

var

    num1, num2, num3, menor: inteiro

inicio

    escreval("Programa para Encontrar o Menor entre Três Números")
    escreval()
    escreva("# Digite o 1º Número: ")
    leia(num1)
    escreva("# Digite o 2º Número: ")
    leia(num2)
    escreva("# Digite o 3º Número: ")
    leia(num3)

    se ((num1 <= num2) e (num1 <= num3)) entao

        menor <- num1

    senao

        se (num2 <= num3) entao

            menor <- num2

        senao

            menor <- num3

        fimse

    fimse

    escreval()
    escreval("# Menor número: ", menor, ".")

fimalgoritmo
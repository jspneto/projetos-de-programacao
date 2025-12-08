algoritmo "multiplos"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Múltiplos:
    //
    // Fazer um programa para ler dois números inteiros, e dizer se um número é
    // múltiplo do outro. Os números podem ser digitados em qualquer ordem.

var

    num1, num2: inteiro
    resultado: caractere

inicio

    escreval("Programa para Verificar se Dois Números Inteiros são Múltiplos")
    escreval()
    escreva("# Digite o 1º número: ")
    leia(num1)
    escreva("# Digite o 2º número: ")
    leia(num2)

    se (((num1 % num2) = 0) ou ((num2 % num1) = 0)) entao

        resultado <- "são múltiplos"

    senao

        resultado <- "não são múltiplos"

    fimse

    escreval()
    escreval("# Os números ", num1, " e ", num2, " ", resultado, ".")

fimalgoritmo
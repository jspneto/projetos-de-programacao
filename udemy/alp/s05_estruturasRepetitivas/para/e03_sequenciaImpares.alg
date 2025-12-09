algoritmo "sequenciaImpares"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Sequência Ímpares:
    //
    // Leia um valor inteiro X. Em seguida mostre os ímpares de 1 até X, um
    // valor por linha, inclusive o X, se for o caso.

var

    i, x: inteiro

inicio

    escreval("Programa para Escrever Todos os Inteiros Ímpares de 1 até X")
    escreval()
    escreva("# Digite o número X: ")
    leia(x)

    escreval()
    escreval("# Números Ímpares:")
    escreval()

    para i de (1) ate (x) passo 2 faca

        escreval("  ", i)

    fimpara

fimalgoritmo
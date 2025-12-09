algoritmo "tabuada"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Tabuada:
    //
    // Ler um número inteiro N, daí mostrar na tela a tabuada de N para 1 a 10,
    // conforme exemplo.

var

    i, n: inteiro

inicio

    escreval("Programa para Calcular a Tabuada de um Número N")
    escreval()
    escreva("# Digite o número: ")
    leia(n)
    
    escreval()
    escreval("# Tabuada de ", n, ":")
    escreval()

    para i de (1) ate (10) faca

        escreval("  ", n, " x ", i, " = ", n*i, ".")

    fimpara

fimalgoritmo
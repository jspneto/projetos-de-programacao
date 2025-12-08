algoritmo "crescente"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Crescente:
    //
    // Leia uma quantidade indeterminada de duplas de valores inteiros X e Y.
    // Escreva para cada X e Y uma mensagem que indique se estes valores foram
    // digitados em ordem crescente ou decrescente. O programa deve finalizar
    // quando forem digitados dois valores iguais.

var

    x, y: inteiro
    ordem: caractere

procedimento lerDados(var x: inteiro; var y: inteiro)
    inicio
        escreval()
        escreva("# Digite o 1º número: ")
        leia(x)
        escreva("# Digite o 2º número: ")
        leia(y)
fimprocedimento

inicio

    escreval("Programa para Analisar a Ordem de Digitação de Dois Inteiros")
    lerDados(x, y)

    enquanto (x <> y) faca

        se (x < y) entao

            ordem <- "crescente"

        senao

            ordem <- "decrescente"

        fimse

        escreval("# Números digitados em ordem ", ordem, ".")
        lerDados(x, y)

    fimenquanto

fimalgoritmo
algoritmo "somaImpares"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Soma Ímpares:
    //
    // Leia 2 valores inteiros X e Y (em qualquer ordem). A seguir, calcule e
    // mostre a soma dos números impares entre eles.

var

    i, x, y, apoio, soma: inteiro

inicio

    escreval("Programa para Somar os Números Ímpares Entre Dois Inteiros")
    escreval()
    escreva("# Digite o 1º número: ")
    leia(x)
    escreva("# Digite o 2º número: ")
    leia(y)

    se (x > y) entao
        apoio <- y
        y <- x
        x <- apoio
    fimse

    soma <- 0

    para i de (x + 1) ate (y - 1) faca

        se ((i % 2) <> 0) entao

            soma <- soma + i

        fimse

    fimpara

    escreval()
    escreval("# Soma os ímpares: ", soma, ".")

fimalgoritmo
algoritmo "soma"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Soma:
    //
    // Fazer um programa para ler dois valores inteiros X e Y, e depois mostrar
    // na tela o valor da soma destes números.

var

    x, y, soma: inteiro

inicio

    escreval("Programa para Somar Dois Números Inteiros")
    escreval()
    escreva("# Digite o 1º número: ")
    leia(x)
    escreva("# Digite o 2º número: ")
    leia(y)

    soma <- x + y

    escreval()
    escreval("# A soma entre ", x, " e ", y, " é: ", soma, ".")

fimalgoritmo
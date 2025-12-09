algoritmo "divisao"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Divisão:
    //
    // Escreva um algoritmo que leia dois números e imprima o resultado da
    // divisão do primeiro pelo segundo. Caso não seja possível, mostre a
    // mensagem “DIVISAO IMPOSSIVEL”.

var

    i, n, num1, num2: inteiro
    divisao: real

inicio

    escreval("Programa para Dividir dois Números Inteiros")
    escreval()
    escreva("# Digite o número de divisões que deseja efetuar: ")
    leia(n)

    para i de (1) ate (n) faca

        escreval()
        escreval("# Divisão ", i, ":")
        escreva("  Digite o 1º número: ")
        leia(num1)
        escreva("  Digite o 2º número: ")
        leia(num2)

        se (num2 = 0) entao

            escreval("  Divisão impossível.")

        senao

            divisao <- num1 / num2

            escreval("  Divisão: ", divisao:1:2, ".")

        fimse

    fimpara

fimalgoritmo
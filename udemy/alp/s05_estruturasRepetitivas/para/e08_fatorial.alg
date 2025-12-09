algoritmo "fatorial"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Fatorial:
    //
    // Fazer um programa para ler um número natural N (valor máximo: 15), e
    // depois calcular e mostrar o fatorial de N.

var

    i, n, fatorial: inteiro

procedimento validarEntrada(var entrada: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((entrada < lmI) ou (entrada > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

inicio

    escreval("Programa para Calcular o Fatorial de um Número")
    escreval()
    escreva("# Digite o número: ")
    leia(n)
    validarEntrada(n, 0, 15)

    fatorial <- 1

    para i de (n) ate (1) passo -1 faca

        fatorial <- fatorial * i

    fimpara

    escreval()
    escreval("# Fatorial: ", fatorial, ".")

fimalgoritmo
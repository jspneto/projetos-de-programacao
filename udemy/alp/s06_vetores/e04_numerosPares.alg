algoritmo "numerosPares"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Números Pares:
    //
    // Faça um programa que leia N números inteiros e armazene-os em um vetor.
    // Em seguida, mostre na tela todos os números pares, e também a quantidade
    // de números pares.

var

    n, numPares: inteiro
    vet: vetor [0..9] de inteiro

procedimento validarEntrada(var entrada: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((entrada < lmI) ou (entrada > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

procedimento preencherVetor(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            escreva("  Elemento [", i, "]: ")
            leia(vet[i])
        fimpara
fimprocedimento

procedimento escreverParesVetor(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            se ((vet[i] % 2) = 0) entao
                escreva(" (", vet[i], ")")
            fimse
        fimpara
        escreval(".")
fimprocedimento

funcao conferirPares(comprimento: inteiro): inteiro
    var
        i, pares: inteiro
    inicio
        pares <- 0
        para i de (0) ate (comprimento - 1) faca
            se ((vet[i] % 2) = 0) entao
                pares <- pares + 1
            fimse
        fimpara
    retorne pares
fimfuncao

inicio

    escreval("Programa para Separar os Números Pares de um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor:")
    preencherVetor(n)

    numPares <- conferirPares(n)

    escreval
    escreva("# Números pares:")
    escreverParesVetor(n)
    escreval("# Número de pares: ", numPares, ".")

fimalgoritmo
algoritmo "mediaPares"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Média Pares:
    //
    // Fazer um programa para ler um vetor de N números inteiros. Em seguida,
    // mostrar na tela a média aritmética somente dos números pares lidos, com
    // uma casa decimal. Se nenhum número par for digitado, mostrar a mensagem
    // "NENHUM NUMERO PAR".

var

    n, numPares: inteiro
    somaPares, mediaPares: real
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

funcao conferirElementosPares(comprimento: inteiro): inteiro
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
fimprocedimento

funcao somarElementosPares(comprimento: inteiro): inteiro
    var
        i, soma: inteiro
    inicio
        soma <- 0
        para i de (0) ate (comprimento - 1) faca
            se ((vet[i] % 2) = 0) entao
                soma <- soma + vet[i]
            fimse
        fimpara
    retorne soma
fimprocedimento

inicio

    escreval("Programa para Calcular a Média dos Elementos Pares de um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor:")
    preencherVetor(n)

    numPares <- conferirElementosPares(n)
    somaPares <- somarElementosPares(n)
    mediaPares <- somaPares / numPares

    se (numPares = 0) entao

        escreval()
        escreval("# NENHUM NÚMERO PAR.")

    senao

        escreval()
        escreval("# Média dos números pares: ", mediaPares:1:1, ".")

    fimse

fimalgoritmo
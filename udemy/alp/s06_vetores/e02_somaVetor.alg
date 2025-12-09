algoritmo "somaVetor"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Soma Vetor:
    //
    // Faça um programa que leia N números reais e armazene-os em um vetor.
    // Em seguida:
    //
    // a) Imprimir todos os elementos do vetor
    // b) Mostrar na tela a soma e a média dos elementos do vetor

var

    n: inteiro
    soma, media: real
    vet: vetor [0..9] de real

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

procedimento escreverVetor(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            escreva(" (", vet[i]:1:1, ")")
        fimpara
        escreval(".")
fimprocedimento

funcao somarVetor(comprimento: inteiro): real
    var
        i: inteiro
        soma: real
    inicio
        soma <- 0
        para i de (0) ate (comprimento - 1) faca
            soma <- soma + vet[i]
        fimpara
    retorne soma
fimfuncao

inicio

    escreval("Programa para Somar e Calcular a Média dos Elementos de um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor: ")
    preencherVetor(n)

    soma <- somarVetor(n)
    media <- soma / n

    escreval()
    escreva("# Elementos do vetor:")   
    escreverVetor(n)
    escreval("# Soma: ", soma:1:1, ".")
    escreval("# Média: ", media:1:1, ".")

fimalgoritmo
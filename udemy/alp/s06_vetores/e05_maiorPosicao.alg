algoritmo "maiorPosicao"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Maior Posição:
    //
    // Faça um programa que leia N números reais e armazene-os em um vetor. Em
    // seguida, mostrar na tela o maior número do vetor (supor não haver
    // empates). Mostrar também a posição do maior elemento, considerando a
    // primeira posição como 0 (zero).

var

    n, posicaoMaiorElemento: inteiro
    maiorElemento: real
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

funcao encontrarPosicaoMaiorElemento(comprimento: inteiro): inteiro
    var
        i, maior: inteiro
    inicio
        maior <- 0
        para i de (1) ate (comprimento - 1) faca
            se (vet[i] >= vet[maior]) entao
                maior <- i
            fimse
        fimpara
    retorne maior
fimprocedimento

inicio

    escreval("Programa para Encontrar o Maior Elemento de um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor: ")
    preencherVetor(n)

    posicaoMaiorElemento <- encontrarPosicaoMaiorElemento(n)
    maiorElemento <- vet[posicaoMaiorElemento]

    escreval()
    escreval("# Maior elemento: ", maiorElemento:1:1, ".")
    escreval("# Posição do maior elemento: ", posicaoMaiorElemento, ".")

fimalgoritmo
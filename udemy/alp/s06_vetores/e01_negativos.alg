algoritmo "negativos"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Negativos:
    //
    // Faça um programa que leia um número inteiro positivo N (máximo = 10) e
    // depois N números inteiros e armazene-os em um vetor. Em seguida, mostrar
    // na tela todos os números negativos lidos.

var

    n: inteiro
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

procedimento escreverNegativosVetor(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (n - 1) faca
            se (vet[i] < 0) entao
                escreva(" (", vet[i], ")")
            fimse
        fimpara
        escreval(".")
fimprocedimento

inicio

    escreval("Programa para Separar os Números Negativos de um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor: ")
    preencherVetor(n)

    escreval()
    escreva("# Elementos negativos do vetor:")
    escreverNegativosVetor(n)

fimalgoritmo
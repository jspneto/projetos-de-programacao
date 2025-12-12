algoritmo "somaVetores"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Soma Vetores:
    //
    // Faça um programa para ler dois vetores A e B, contendo N elementos cada.
    // Em seguida, gere um terceiro vetor C onde cada elemento de C é a soma
    // dos elementos correspondentes de A e B. Imprima o vetor C gerado.

var

    n: inteiro
    a, b, c: vetor [0..9] de inteiro

procedimento validarEntrada(var entrada: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((entrada < lmI) ou (entrada > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

procedimento preencherVetorA(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            escreva("  Elemento [", i, "]: ")
            leia(a[i])
        fimpara
fimprocedimento

procedimento preencherVetorB(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            escreva("  Elemento [", i, "]: ")
            leia(b[i])
        fimpara
fimprocedimento

procedimento somarVetores(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            c[i] <- a[i] + b[i]
        fimpara
fimprocedimento

procedimento escreverVetorSoma(comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento -1) faca
            escreva(" (", c[i], ")")
        fimpara
        escreval(".")
fimprocedimento

inicio

    escreval("Programa para Somar dois Vetores A e B")
    escreval()
    escreva("# Digite o comprimento dos vetores: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor A: ")
    preencherVetorA(n)

    escreval()
    escreval("# Digite os elementos do vetor B: ")
    preencherVetorB(n)

    escreval()
    escreva("# Vetor resultante:")
    somarVetores(n)
    escreverVetorSoma(n)

fimalgoritmo
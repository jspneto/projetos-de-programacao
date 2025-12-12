algoritmo "abaixoDaMedia"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Abaixo da Média:
    //
    // Fazer um programa para ler um número inteiro N e depois um vetor de N
    // números reais. Em seguida, mostrar na tela a média aritmética de todos
    // elementos com três casas decimais. Depois mostrar todos os elementos do
    // vetor que estejam abaixo da média, com uma casa decimal cada.

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

procedimento escreverElementosAbaixoMedia(media: real; comprimento: inteiro)
    var
        i: inteiro
    inicio
        para i de (0) ate (comprimento - 1) faca
            se (vet[i] < media) entao
                escreva(" (", vet[i]:1:1, ")")
            fimse
        fimpara
        escreval(".")
fimprocedimento

funcao somarElementosVetor(comprimento: inteiro): real
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

    escreval("Programa para Encontrar Valores Abaixo da Média em um Vetor")
    escreval()
    escreva("# Digite o comprimento do vetor: ")
    leia(n)
    validarEntrada(n, 1, 10)

    escreval()
    escreval("# Digite os elementos do vetor:")
    preencherVetor(n)

    soma <- somarElementosVetor(n)
    media <- soma / n

    escreval()
    escreval("# Média: ", media:1:3, ".")
    escreva("# Elementos abaixo da média:")
    escreverElementosAbaixoMedia(media, n)

fimalgoritmo
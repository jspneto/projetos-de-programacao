algoritmo "maisVelho"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Mais Velho:
    //
    // Fazer um programa para ler um conjunto de nomes de pessoas e suas
    // respectivas idades. Os nomes devem ser armazenados em um vetor, e as
    // idades em um outro vetor. Depois, mostrar na tela o nome da pessoa mais
    // velha.

var

    i, n, pessoaMaisVelha: inteiro
    idades: vetor [0..9] de inteiro
    nomes: vetor [0..9] de caractere

procedimento validarEntrada(var entrada: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((entrada < lmI) ou (entrada > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

funcao encontrarPessoaMaisVelha(comprimento: inteiro): inteiro
    var
        j, posicao: inteiro
    inicio
        posicao <- 0
        para j de (1) ate (comprimento - 1) faca
            se (idades[j] >= idades[posicao]) entao
                posicao <- j
            fimse
        fimpara
    retorne posicao
fimfuncao

inicio

    escreval("Programa para Encontrar a Pessoa Mais Velha em um Grupo")
    escreval()
    escreva("# Digite o número total de pessoas: ")
    leia(n)
    validarEntrada(n, 1, 10)

    para i de (0) ate (n - 1) faca

        escreval()
        escreval("# Pessoa ", i+1, ":")
        escreva("  Digite o nome: ")
        leia(nomes[i])
        escreva("  Digite a idade: ")
        leia(idades[i])

    fimpara

    pessoaMaisVelha <- encontrarPessoaMaisVelha(n)

    escreval()
    escreval("# Pessoa mais velha: ", nomes[pessoaMaisVelha], ".")
    escreval("# Idade pessoa mais velha: ", idades[pessoaMaisVelha], ".")

fimalgoritmo
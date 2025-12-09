algoritmo "Alturas"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Soma Vetor:
    //
    // Fazer um programa para ler nome, idade e altura de N pessoas, conforme
    // exemplo. Depois, mostrar na tela a altura média das pessoas, e mostrar
    // também a porcentagem de pessoas com menos de 16 anos, bem como os nomes
    // dessas pessoas, caso existam.

var

    i, n, numMenores16: inteiro
    somaAlturas, mediaAlturas, percMenores16: real
    idades: vetor [0..9] de inteiro
    alturas: vetor [0..9] de real
    nomes: vetor [0..9] de caractere

procedimento validarEntrada(var entrada: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((entrada < lmI) ou (entrada > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

procedimento escreverMenores16(comprimento: inteiro)
    var
        j: inteiro
    inicio
        para j de (0) ate (comprimento - 1) faca
            se (idades[j] < 16) entao
                escreval("  ", nomes[j], ".")
            fimse
        fimpara
fimprocedimento

funcao somarAlturas(comprimento: inteiro): real
    var
        j: inteiro
        soma: real
    inicio
        soma <- 0
        para j de (0) ate (comprimento - 1) faca
            soma <- soma + alturas[j]
        fimpara
    retorne soma
fimfuncao

funcao conferirMenores16(comprimento: inteiro): inteiro
    var
        j, menores: inteiro
    inicio
        menores <- 0
        para j de (0) ate (comprimento - 1) faca
            se (idades[j] < 16) entao
                menores <- menores + 1
            fimse
        fimpara
    retorne menores
fimfuncao

inicio

    escreval("Programa para Analisar Dados Pessoais")
    escreval()
    escreva("# Digite o número de pessoas: ")
    leia(n)
    validarEntrada(n, 1, 10)

    para i de (0) ate (n - 1) faca

        escreval()
        escreval("# Pessoa ", i+1, ":")
        escreva("  Digite o nome: ")
        leia(nomes[i])
        escreva("  Digite a idade: ")
        leia(idades[i])
        escreva("  Digite a altura: ")
        leia(alturas[i])

    fimpara

    somaAlturas <- somarAlturas(n)
    mediaAlturas <- somaAlturas / n
    numMenores16 <- conferirMenores16(n)
    percMenores16 <- (numMenores16 * 100) / n

    escreval()
    escreval("# Altura Média: ", mediaAlturas:1:2, ".")
    escreval("# Menores que Dezesseis: ", percMenores16:1:1, "%.")
    escreverMenores16(n)

fimalgoritmo
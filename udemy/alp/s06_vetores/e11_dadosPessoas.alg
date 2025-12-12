algoritmo "dadosPessoas"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Dados Pessoas:
    //
    // Tem-se um conjunto de dados contendo a altura e o gênero (M, F) de N
    // pessoas. Fazer um programa que calcule e escreva a maior e a menor
    // altura do grupo, a média de altura das mulheres, e o número de homens.

var

    i, n, menorAltura, maiorAltura, numeroHomens: inteiro
    somaAlturaMulheres, mediaAlturaMulheres: real
    alturas: vetor [0..9] de real
    generos: vetor [0..9] de caractere

procedimento validarEntrada(var entrada: inteiro; limI: inteiro; limS: inteiro)
    inicio
        enquanto ((entrada < limI) ou (entrada > limS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

funcao encontrarMenorAltura(comprimento: inteiro): inteiro
    var
        j, menor: inteiro
    inicio
        menor <- 0
        para j de (1) ate (comprimento - 1) faca
            se (alturas[menor] >= alturas[j]) entao
                menor <- j
            fimse
        fimpara
    retorne menor
fimprocedimento

funcao encontrarMaiorAltura(comprimento: inteiro): inteiro
    var
        j, maior: inteiro
    inicio
        maior <- 0
        para j de (1) ate (comprimento - 1) faca
            se (alturas[maior] >= alturas[j]) entao
                maior <- j
            fimse
        fimpara
    retorne maior
fimprocedimento

funcao conferirHomens(comprimento: inteiro): inteiro
    var
        j, homens: inteiro
    inicio
        homens <- 0
        para j de (0) ate (comprimento - 1) faca
            se (generos[j] = "M") entao
                homens <- homens + 1
            fimse
        fimpara
    retorne homens
fimfuncao

funcao somarAlturaMulheres(comprimento: inteiro): real
    var
        j: inteiro
        soma: real
    inicio
        soma <- 0
        para j de (0) ate (comprimento - 1) faca
            se (generos[j] = "F") entao
                soma <- soma + alturas[j]
            fimse
        fimpara
    retorne soma
fimfuncao

inicio

    escreval("Programa para Processar Dados Pessoais")
    escreval()
    escreva("# Digite o número de pessoas: ")
    leia(n)
    validarEntrada(n, 1, 10)

    para i de (0) ate (n - 1) faca

        escreval()
        escreval("# Pessoa ", i+1, ":")
        escreva("  Digite o gênero (M/F): ")
        leia(generos[i])
        escreva("  Digite a altura: ")
        leia(alturas[i])

    fimpara

    menorAltura <- encontrarMenorAltura(n)
    maiorAltura <- encontrarMaiorAltura(n)
    numeroHomens <- conferirHomens(n)
    somaAlturaMulheres <- somarAlturaMulheres(n)
    mediaAlturaMulheres <- somaAlturaMulheres / (n - numeroHomens)

    escreval()
    escreval("# Menor altura: ", alturas[menorAltura]:1:2, " uc.")
    escreval("# Maior altura: ", alturas[maiorAltura]:1:2, " uc.")
    escreval("# Média de altura mulheres: ", mediaAlturaMulheres:1:2, " uc.")
    escreval("# Número de homens: ", numeroHomens, ".")

fimalgoritmo
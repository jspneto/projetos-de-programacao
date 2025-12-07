algoritmo "glicose"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Glicose:
    //
    // Fazer um programa para ler a quantidade de glicose no sangue de uma
    // pessoa e depois mostrar na tela a classificação desta glicose de acordo
    // com a tabela de referência ao lado.
    //
    // Classificação        Glicose
    //
    // Normal               Até 100 mg/dl
    // Elevado              Maior que 100 até 140 mg/dl
    // Diabetes             Maior de 140 mg/dl

var

    glicose: real
    classificacao: caractere

inicio

    escreval("Programa para Classificar a Glicose de um Paciente")
    escreval()
    escreva("# Digite o nível da glicose: ")
    leia(glicose)

    se (glicose <= 100.0) entao

        classificacao <- "NORMAL"

    senao

        se ((glicose > 100.0) e (glicose <= 140.0)) entao

            classificacao <- "ELEVADA"

        senao

            classificacao <- "DIABETES"

        fimse

    fimse

    escreval()
    escreval("# Classificação: ", classificacao, ".")

fimalgoritmo
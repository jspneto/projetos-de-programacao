algoritmo "idades"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Idades:
    //
    // Fazer um programa para ler o nome e a idade de duas pessoas. Ao final
    // mostrar uma mensagem com os nomes e a idade média entre essas pessoas,
    // com uma casa decimal, conforme exemplo.

var

    idade1, idade2: inteiro
    media: real
    nome1, nome2: caractere

procedimento lerDados(var nom: caractere; var idd: inteiro; pes: inteiro)
    inicio
        escreval()
        escreva("# Digite o nome da ", pes, "ª pessoa: ")
        leia(nom)
        escreva("# Digite a idade da ", pes, "ª pessoa: ")
        leia(idd)
fimprocedimento

inicio

    escreval("Programa para Calcular a Média de Idade entre Duas Pessoas")
    lerDados(nome1, idade1, 1)
    lerDados(nome2, idade2, 2)

    media <- (idade1 + idade2) / 2

    escreval()
    escreva("# A média de idade entre ", nome1, " e ", nome2)
    escreval(" é ", media:1:1, " anos.")

fimalgoritmo
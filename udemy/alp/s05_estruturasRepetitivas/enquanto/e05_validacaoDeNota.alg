algoritmo "validacaoDeNota"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Validação de Nota:
    //
    // Faça um programa que leia as notas referentes às duas avaliações de um
    // aluno. Calcule e imprima a média semestral. Faça com que o algoritmo
    // só aceite notas válidas (uma nota válida deve pertencer ao intervalo
    // [0,10]). Cada nota deve ser validada separadamente.

var

    nota1, nota2, media: real

procedimento validarEntrada(var entrada: real; limI: real; limS: real)
    inicio
        enquanto ((entrada < limI) ou (entrada > limS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

inicio

    escreval("Programa para Calcular a Média Semestral de um Aluno")
    escreval()
    escreva("# Digite a nota da 1ª avaliação: ")
    leia(nota1)
    validarEntrada(nota1, 0.0, 10.0)
    escreval()
    escreva("# Digite a nota da 2ª avaliação: ")
    leia(nota2)
    validarEntrada(nota2, 0.0, 10.0)

    media <- (nota1 + nota2) / 2

    escreval()
    escreval("# Média semestral do aluno: ", media:1:2, ".")

fimalgoritmo
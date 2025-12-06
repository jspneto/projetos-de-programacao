algoritmo "notas"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Notas:
    //
    // Fazer um programa para ler as duas notas que um aluno obteve no primeiro
    // e segundo semestres de uma disciplina anual. Em seguida, mostrar a nota
    // final que o aluno obteve (com uma casa decimal) no ano juntamente com um
    // texto explicativo. Caso a nota final do aluno seja inferior a 60.00,
    // mostrar a mensagem "REPROVADO", conforme exemplos. 

var

    nota1, nota2, notaFinal: real

inicio

    escreval("Programa para Calcular a Nota Final de um Aluno")
    escreval()
    escreva("# Digite a nota do 1º semestre: ")
    leia(nota1)
    escreva("# Digite a nota do 2º semestre: ")
    leia(nota2)

    notaFinal <- nota1 + nota2

    escreval()
    escreval("# Nota final do aluno: ", notaFinal:1:1, ".")

    se (notaFinal < 60.00) entao

        escreval("  REPROVADO.")

    fimse

fimalgoritmo
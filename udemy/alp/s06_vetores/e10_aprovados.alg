algoritmo "aprovados"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Aprovados:
    //
    // Fazer um programa para ler um conjunto de N nomes de alunos, bem como as
    // notas que eles tiraram no 1o e 2o semestres. Cada uma dessas informações
    // deve ser armazenada em um vetor. Depois, imprimir os nomes dos alunos
    // aprovados, considerando aprovados aqueles cuja média das notas seja
    // maior ou igual a 6.0 (seis).

var

    i, n: inteiro
    nota1, nota2: real
    medias: vetor [0..9] de real
    nomes: vetor [0..9] de caractere

procedimento validarEntradaGeral(var ent: inteiro; lmI: inteiro; lmS: inteiro)
    inicio
        enquanto ((ent < lmI) ou (ent > lmS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(ent)
        fimenquanto
fimprocedimento

procedimento validarEntradaNota(var entrada: real; limI: real; limS: real)
    inicio
        enquanto ((entrada < limI) ou (entrada > limS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

procedimento escreverAprovados(comprimento: inteiro)
    var
        j: inteiro
    inicio
        para j de (0) ate (comprimento - 1) faca
            se (medias[j] >= 6.0) entao
                escreval("  ", nomes[j], ".")
            fimse
        fimpara
fimprocedimento

inicio

    escreval("Programa para Determinar os Alunos Aprovados em um Curso")
    escreval()
    escreva("# Digite o número de alunos: ")
    leia(n)
    validarEntradaGeral(n, 1, 10)

    para i de (0) ate (n - 1) faca

        escreval()
        escreval("# Aluno ", i+1, ":")
        escreva("  Digite o nome: ")
        leia(nomes[i])
        escreva("  Digite a nota da 1ª avaliação: ")
        leia(nota1)
        validarEntradaNota(nota1, 0.0, 10.0)
        escreva("  Digite a nota da 2ª avaliação: ")
        leia(nota2)
        validarEntradaNota(nota2, 0.0, 10.0)

        medias[i] <- (nota1 + nota2) / 2

    fimpara

    escreval()
    escreval("# Alunos aprovados:")
    escreverAprovados(n)

fimalgoritmo
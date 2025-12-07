algoritmo "dardo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Dardo:
    //
    // No arremesso de dardo, o atleta tem três chances para lançar o dardo à
    // maior distância que conseguir. Você deve criar um programa para, dadas
    // as medidas das três tentativas de lançamento, informar qual foi a maior.

var

    lancamento1, lancamento2, lancamento3, maior: real

inicio

    escreval("Programa para Determinar o Maior Lançamento de um Dardo")
    escreval()
    escreva("# Digite a distância do 1º lançamento: ")
    leia(lancamento1)
    escreva("# Digite a distância do 2º lançamento: ")
    leia(lancamento2)
    escreva("# Digite a distância do 3º lançamento: ")
    leia(lancamento3)

    se ((lancamento1 >= lancamento2) e (lancamento1 >= lancamento3)) entao

        maior <- lancamento1

    senao

        se (lancamento2 >= lancamento3) entao

            maior <- lancamento2

        senao

            maior <- lancamento3

        fimse

    fimse

    escreval()
    escreval("# Maior lançamento: ", maior:1:2, " uc.")

fimalgoritmo
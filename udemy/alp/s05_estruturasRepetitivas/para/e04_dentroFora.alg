algoritmo "dentroFora"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Dentro-Fora:
    //
    // Leia um valor inteiro N. Este valor será a quantidade de valores
    // inteiros X que serão lidos em seguida. Mostre quantos destes valores
    // X estão dentro do intervalo [10,20] e quantos estão fora do intervalo,
    // conforme exemplo.

var

    i, n, x, dentro, fora: inteiro
    msgIntroducao: caractere

inicio

    msgIntroducao <- "Programa para Verificar os Números que Pertencem ao"
    msgIntroducao <- msgIntroducao + " Intervalo [10 , 20]"

    escreval(msgIntroducao)
    escreval()
    escreva("# Digite quantos números deseja verificar: ")
    leia(n)
    escreval()

    dentro <- 0
    fora <- 0

    para i de (1) ate (n) faca

        escreva("# Digite o ", i, "º número: ")
        leia(x)

        se ((x >= 10) e (x <= 20)) entao

            dentro <- dentro + 1

        senao

            fora <- fora + 1

        fimse

    fimpara

    escreval()
    escreval("# Dentro do invervalo: ", dentro, ".")
    escreval("# Fora do intervalo: ", fora, ".")

fimalgoritmo
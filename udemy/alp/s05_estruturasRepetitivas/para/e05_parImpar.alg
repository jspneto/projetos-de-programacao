algoritmo "parImpar"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Par-Ímpar:
    //
    // Leia um valor inteiro N. Este valor será a quantidade de números
    // inteiros que serão lidos em seguida. Para cada valor lido, mostre
    // uma mensagem dizendo se este valor lido é PAR ou IMPAR, e também
    // se é POSITIVO ou NEGATIVO. No caso do valor ser igual a zero (0),
    // seu programa deverá imprimir apenas NULO.

var

    i, n, numero: inteiro
    resultado, msgIntroducao: caractere

inicio

    msgIntroducao <- "Programa para Classificar um Número como Par, Ímpar"
    msgIntroducao <- msgIntroducao + " Positivo, Negativo ou Nulo"

    escreval(msgIntroducao)
    escreval()
    escreva("# Digite quantos números deseja verificar: ")
    leia(n)

    para i de (1) ate (n) faca

        escreval()
        escreva("# Digite o 1º número: ")
        leia(numero)

        se (numero = 0) entao

            resultado <- "nulo"

        senao

            se (numero > 0) entao

                se ((numero % 2) = 0) entao

                    resultado <- "par positivo"

                senao

                    resultado <- "ímpar positivo"

                fimse

            senao

                se ((numero % 2) = 0) entao

                    resultado <- "par negativo"

                senao

                    resultado <- "ímpar negativo"

                fimse

            fimse

        fimse

        escreval("  Número ", resultado, ".")

    fimpara

fimalgoritmo
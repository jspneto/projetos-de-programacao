algoritmo "paresConsecutivos"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Pares Consecutivos:
    //
    // O programa deve ler um valor inteiro X indefinidas vezes. (O programa
    // irá parar quando o valor de X for igual a 0). Para cada X lido, imprima
    // a soma dos 5 pares consecutivos a partir de X, inclusive o X, se for
    // par. Se o valor de entrada for 4, por exemplo, a saída deve ser 40,
    // que é o resultado da operação: 4+6+8+10+12, enquanto que se o valor de
    // entrada for 11, por exempo, a saída deve ser 80, que é a soma de
    // 12+14+16+18+20.

var

    x, soma: inteiro
    msgIntroducao: caractere

inicio

    msgIntroducao <- "Programa para Calcular a Soma dos Cinco Pares"
    msgIntroducao <- msgIntroducao + " Consegutivos a partir de um Número X"

    escreval(msgIntroducao)
    escreval()
    escreva("# Digite o valor de X: ")
    leia(x)

    enquanto (x > 0) faca

        se ((x % 2) = 0) entao

            soma <- 5 * (x + 4)

        senao

            soma <- 5 * (x + 5)

        fimse

        escreval("# Soma: ", soma, ".")
        escreval()
        escreva("# Digite o valor de X: ")
        leia(x)

    fimenquanto

fimalgoritmo
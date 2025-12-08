algoritmo "coordenadas"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Coordenadas:
    //
    // Leia os valores das coordenadas X e Y de um ponto no plano cartesiano.
    // A seguir, determine qual o quadrante ao qual pertence o ponto (Q1, Q2,
    // Q3 ou Q4). Se o ponto estiver na origem, escreva a mensagem “Origem”.
    // Se o ponto estiver sobre um dos eixos escreva “Eixo X” ou “Eixo Y”,
    // conforme for a situação.
    //
    //                                    |
    //                                    |
    //                            Q2      |      Q1
    //                                    |
    //                                    |
    //                      --------------|--------------
    //                                    |
    //                                    |
    //                            Q3      |      Q4
    //                                    |
    //                                    |

var

    x, y: real
    posicao: caractere

inicio

    escreval("Programa para Determinar a Posição de um Ponto")
    escreval()
    escreva("# Digite a coordenada X: ")
    leia(x)
    escreva("# Digite a coordenada Y: ")
    leia(y)

    se (x = 0) entao

        se (y = 0) entao

            posicao <- "Origem"

        senao

            posicao <- "Eixo Y"

        fimse

    senao

        se (y = 0) entao

            posicao <- "Eixo X"

        senao

            se (x > 0) entao

                se (y > 0) entao

                    posicao <- "Q1"

                senao

                    posicao <- "Q4"

                fimse

            senao

                se (y > 0) entao

                    posicao <- "Q2"

                senao

                    posicao <- "Q3"

                fimse

            fimse

        fimse

    fimse

    escreval()
    escreval("# Posição do ponto (", x:1:1, " , ", y:1:1, "): ", posicao, ".")

fimalgoritmo
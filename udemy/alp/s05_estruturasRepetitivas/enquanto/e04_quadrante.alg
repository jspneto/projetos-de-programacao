algoritmo "quadrante"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Senha Fixa:
    //
    // Escreva um programa para ler as coordenadas (X,Y) de uma quantidade
    // indeterminada de pontos no sistema cartesiano. Para cada ponto escrever
    // o quadrante a que ele pertence (Q1, Q2, Q3 ou Q4). O algoritmo será
    // encerrado quando pelo menos uma de duas coordenadas for NULA (nesta
    // situação sem escrever mensagem alguma).

var

    x, y: real
    quadrante, msgSaida: caractere

procedimento lerCoordenadas(var x: real; var y: real)
    inicio
        escreval()
        escreva("# Digite a coordenada X: ")
        leia(x)
        escreva("# Digite a coordenada Y: ")
        leia(y)
fimprocedimento

inicio

    escreval("Programa para Determinar os Quadrantes de Vários Pontos")
    lerCoordenadas(x, y)

    enquanto ((x <> 0) e (y <> 0)) faca

        se (x > 0) entao

            se (y > 0) entao

                quadrante <- "Q1"

            senao

                quadrante <- "Q4"

            fimse

        senao

            se (y > 0) entao

                quadrante <- "Q2"

            senao

                quadrante <- "Q3"

            fimse

        fimse

        msgSaida <- "# Quadrante do ponto ("
        
        escreval(msgSaida, x:1:1, " , ", y:1:1, "): ", quadrante, ".")
        lerCoordenadas(x, y)

    fimenquanto

fimalgoritmo
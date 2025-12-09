algoritmo "experiencias"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Experiências:
    //
    // Maria acabou de iniciar seu curso de graduação na faculdade de medicina
    // e precisa de sua ajuda para organizar os experimentos de um laboratório
    // o qual ela é responsável. Ela quer saber, no final do ano, quantas
    // cobaias foram utilizadas no laboratório e o percentual de cada tipo de
    // cobaia utilizada. Este laboratório em especial utiliza três tipos de
    // cobaias: sapos, ratos e coelhos. Para obter estas informações, ela sabe
    // exatamente o número de experimentos que foram realizados, o tipo de
    // cobaia utilizada e a quantidade de cobaias utilizadas em cada
    // experimento. Faça um programa que leia um valor inteiro N que indica 
    // vários casos de teste que vem a seguir. Cada caso de teste contém um
    // inteiro que representa a quantidade de cobaias utilizadas e uma letra
    // ('C', 'R' ou 'S'), indicando o tipo de cobaia (R:Rato S:Sapo C:Coelho).
    // Apresente o total de cobaias utilizadas, o total de cada tipo de cobaia
    // utilizada e o percentual de cada uma em relação ao total de cobaias
    // utilizadas, sendo que o percentual deve ser apresentado com dois dígitos
    // após o ponto.

var

    i, numTestes, numCobaias, numCoelhos, numRatos, numSapos, numTotal: inteiro
    percCoelhos, percRatos, percSapos: real
    tipoCobaia: caractere

inicio

    escreval("Programa para Contabilizar os Experimentos de um Laoratório")
    escreval()
    escreval("# Tipos de Cobaia:")
    escreval()
    escreval("  C. Coelho.")
    escreval("  R. Rato.")
    escreval("  S. Sapo.")
    escreval()
    escreva("# Digite o número testes realizados: ")
    leia(numTestes)

    numCoelhos <- 0
    numRatos <- 0
    numSapos <- 0

    para i de (1) ate (numTestes) faca

        escreval()
        escreval("# Teste ", i, ":")
        escreva("  Digite o número de cobaias: ")
        leia(numCobaias)
        escreva("  Digite o tipo de cobaia: ")
        leia(tipoCobaia)

        escolha (tipoCobaia)

            caso "C"

                numCoelhos <- numCoelhos + numCobaias

            caso "R"

                numRatos <- numRatos + numCobaias

            caso "S"

                numSapos <- numSapos + numCobaias

        fimescolha

    fimpara

    numTotal <- numCoelhos + numRatos + numSapos
    percCoelhos <- (100 * numCoelhos) / numTotal
    percRatos <- (100 * numRatos) / numTotal
    percSapos <- (100 * numSapos) / numTotal

    escreval()
    escreval("# RELATÓRIO FINAL:")
    escreval()
    escreval("  Número total: ", numTotal, ".")
    escreval("  Número de coelhos: ", numCoelhos, " (", percCoelhos:1:2, "%).")
    escreval("  Número de ratos: ", numRatos, " (", percRatos:1:2, "%).")
    escreval("  Número de sapos: ", numSapos, " (", percSapos:1:2, "%).")

fimalgoritmo
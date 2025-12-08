algoritmo "combustivel"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Combustível:
    //
    // Um posto de combustíveis deseja determinar qual de seus produtos tem a
    // preferência de seus clientes. Escreva um algoritmo para ler o tipo de
    // combustível abastecido, codificado da seguinte forma:
    //
    // 1.Álcool
    // 2.Gasolina
    // 3.Diesel
    // 4.Fim.
    //
    // Caso o usuário informe um código inválido (fora da faixa de 1 a 4) deve
    // ser solicitado um novo código (até que seja válido). O programa será
    // encerrado quando o código informado for o número 4, devendo então
    // mostrar a mensagem "MUITO OBRIGADO", bem como as quantidades de cada
    // combustível.

var

    alcool, gasolina, diesel: inteiro
    codigo, msgIntroducao: caractere

inicio

    msgIntroducao <- "Programa para Calcular a Preferência dos Clientes"
    msgIntroducao <- msgIntroducao + " em um Posto de Combustíveis"

    escreval(msgIntroducao)
    escreval()
    escreval("# Lista de combustíveis:")
    escreval()
    escreval("  1. Álcool.")
    escreval("  2. Gasolina.")
    escreval("  3. Diesel.")
    escreval("  4. Fim.")
    escreval()
    
    alcool <- 0
    gasolina <- 0
    diesel <- 0

    repita

        escreva("# Digite o código do combustível (ou 4 para sair): ")
        leia(codigo)

        escolha (codigo)

            caso "1"

                alcool <- alcool + 1

            caso "2"

                gasolina <- gasolina + 1

            caso "3"

                diesel <- diesel + 1

        fimescolha

    ate (codigo = "4")

    escreval()
    escreval("# MUITO OBRIGADO !!!")
    escreval()
    escreval("  Álcool: ", alcool, ".")
    escreval("  Gasolina: ", gasolina, ".")
    escreval("  Diesel: ", diesel, ".")

fimalgoritmo
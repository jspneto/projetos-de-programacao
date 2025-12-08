algoritmo "lanchonete"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Lanchonete:
    //
    // Uma lanchonete possui vários produtos. Cada produto possui um código e
    // um preço. Você deve fazer um programa para ler o código e a quantidade
    // comprada de um produto (suponha um código válido), e daí informar qual
    // o valor a ser pago, com duas casas decimais, conforme a tabela de
    // produtos ao lado.
    //
    // Código do produto        Preço do produto
    //
    // 1                        R$ 5.00
    // 2                        R$ 3.50
    // 3                        R$ 4.80
    // 4                        R$ 8.90
    // 5                        R$ 7.32

var

    codigo, quantidadeComprada: inteiro
    precoConta: real

inicio

    escreval("Programa para Calcular o Valor da Conta de uma Lanchonete")
    escreval()
    escreva("# Digite o código do produto: ")
    leia(codigo)
    escreva("# Digite a quantidade comprada: ")
    leia(quantidadeComprada)

    escolha (codigo)

        caso (1)

            precoConta <- quantidadeComprada * 5.00

        caso (2)

            precoConta <- quantidadeComprada * 3.50

        caso (3)

            precoConta <- quantidadeComprada * 4.80

        caso (4)

            precoConta <- quantidadeComprada * 8.90

        caso (5)

            precoConta <- quantidadeComprada * 7.32

    fimescolha

    escreval()
    escreval("# Valor da conta: R$ ", precoConta:1:2, ".")

fimalgoritmo
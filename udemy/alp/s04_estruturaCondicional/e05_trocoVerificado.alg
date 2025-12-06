algoritmo "trocoVerificado"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Troco Verificado:
    //
    // Fazer um programa para calcular o troco no processo de pagamento de
    // um produto de uma mercearia. O programa deve ler o preço unitário do
    // produto, a quantidade de unidades compradas deste produto, e o valor
    // em dinheiro dado pelo cliente. Seu programa deve mostrar o valor do
    // troco a ser devolvido ao cliente. Se o dinheiro dado pelo cliente
    // não for suficiente, mostrar uma mensagem informando o valor restante
    // conforme exemplo.

var

    unidadesCompradas: inteiro
    precoProduto, valorCompra, dinheiroCliente, trocoCliente: real

inicio

    escreval("Programa para Calcular o Troco do Cliente de uma Mercearia")
    escreval()
    escreva("# Digite o preço do produto: R$ ")
    leia(precoProduto)
    escreva("# Digite a quantidade comprada: ")
    leia(unidadesCompradas)
    escreva("# Digite o valor pago pelo cliente: R$ ")
    leia(dinheiroCliente)

    valorCompra <- precoProduto * unidadesCompradas
    trocoCliente <- dinheiroCliente - valorCompra

    se (trocoCliente >= 0) entao

        escreval()
        escreval("# Troco do cliente: R$ ", trocoCliente:1:2, ".")

    senao

        trocoCliente <- abs(trocoCliente)

        escreval()
        escreval("# Dinheiro insuficiente.")
        escreval("  Faltam: R$ ", trocoCliente:1:2, ".")

    fimse

fimalgoritmo
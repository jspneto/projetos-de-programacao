algoritmo "soma"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Troco:
    //
    // Fazer um programa para calcular o troco no processo de pagamento de um
    // produto de uma mercearia. O programa deve ler o preço unitário do
    // produto, a quantidade de unidades compradas deste produto e o valor em
    // dinheiro dado pelo cliente (suponha que haja dinheiro suficiente). Seu
    // programa deve mostrar o valor do troco a ser devolvido ao cliente.

var

    unidadesCompradas: inteiro
    precoProduto, precoTotal, dinheiroCliente, trocoCliente: real

inicio

    escreval("Programa para Calcular o Troco de um Cliente")
    escreval()
    escreva("# Digite o preço do produto: R$ ")
    leia(precoProduto)
    escreva("# Digite a quantidade comprada: ")
    leia(unidadesCompradas)
    escreva("# Digite o valor pago pelo cliente: R$ ")
    leia(dinheiroCliente)

    precoTotal <- precoProduto * unidadesCompradas
    trocoCliente <- dinheiroCliente - precoTotal

    escreval()
    escreval("# O troco do cliente é: R$ ", trocoCliente:1:2, ".")

fimalgoritmo
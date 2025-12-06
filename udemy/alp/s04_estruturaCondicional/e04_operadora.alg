algoritmo "operadora"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Operadora:
    //
    // Uma operadora de telefonia cobra R$ 50.00 por um plano básico que dá
    // direito a 100 minutos de telefone. Cada minuto que exceder a franquia
    // de 100 minutos custa R$ 2.00. Fazer um programa para ler a quantidade
    // de minutos que uma pessoa consumiu, daí mostrar o valor a ser pago.

var

    tempoDeUso: inteiro
    valorPagamento: real

inicio

    escreval("Programa para Calcular o Valor de uma Conta de Telefone")
    escreval()
    escreva("# Digite o tempo de uso: ")
    leia(tempoDeUso)

    se (tempoDeUso <= 100) entao

        valorPagamento <- 50.00

    senao

        valorPagamento <- 50.00 + 2.00 * (tempoDeUso - 100)

    fimse

    escreval()
    escreval("Valor a pagar: R$ ", valorPagamento, ".")

fimalgoritmo
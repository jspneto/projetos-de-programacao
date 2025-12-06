algoritmo "circulo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Pagamento:
    //
    // Fazer um programa para ler o nome de um(a) funcionário(a), o valor que
    // ele(a) recebe por hora, e a quantidade de horas trabalhadas por ele(a).
    // Ao final, mostrar o valor do pagamento do funcionário com uma mensagem
    // explicativa, conforme exemplo.

var

    horasTrabalhadas: inteiro
    valorHora, valorPagamento: real
    nome: caractere

inicio

    escreval("Programa para Calcular o Pagamento de um Funcionário")
    escreval()
    escreva("# Digite o nome do funcionário: ")
    leia(nome)
    escreva("# Digite o valor da hora trabalhada: R$ ")
    leia(valorHora)
    escreva("# Digite o número de horas trabalhadas: ")
    leia(horasTrabalhadas)

    valorPagamento <- valorHora * horasTrabalhadas

    escreval()
    escreva("# O funcionário ", nome, " deve receber R$ ")
    escreval(valorPagamento:1:2, ".")

fimalgoritmo
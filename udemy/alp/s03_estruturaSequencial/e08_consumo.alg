algoritmo "circulo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Consumo:
    //
    // Fazer um programa para ler a distância total (em km) percorrida por um
    // carro, bem como o total de combustível gasto por este carro ao percorrer
    // tal distância. Seu programa deve mostrar o consumo médio do carro, com
    // três casas decimais.

var

    distanciaPercorrida, consumoCombustivel, consumoMedio: real

inicio

    escreval("Programa para Calcular o Consumo de Combustível de um Carro")
    escreval()
    escreva("# Digite a distância percorrida (em quilômetros): ")
    leia(distanciaPercorrida)
    escreva("# Digite o combustível consumido (em litros): ")
    leia(consumoCombustivel)

    consumoMedio <- distanciaPercorrida / consumoCombustivel

    escreval()
    escreval("# Esse carro pode fazer ", consumoMedio:1:3, " Km/L.")

fimalgoritmo
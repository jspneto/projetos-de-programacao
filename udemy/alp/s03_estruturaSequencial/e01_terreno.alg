algoritmo "terreno"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Terreno:
    //
    // Fazer um programa para ler as medidas da largura e do comprimento de um
    // terreno retangular, com uma casa decimal, bem como o valor do metro
    // quadrado do terreno, com duas casas decimais. Em seguida, o programa
    // deve mostrar o valor da área do terreno, bem como o valor do preço
    // do terreno, ambos com duas casas decimais, conforme exemplo.

var

    largura, comprimento, valorMetroQuadrado, area, preco: real

inicio

    escreval("Programa para Calcular a Área e o Preço de um Terreno")
    escreval()
    escreva("# Digite a medida da largura: ")
    leia(largura)
    escreva("# Digite a medida do comprimento: ")
    leia(comprimento)
    escreva("# Digite o valor do metro quadrado: ")
    leia(valorMetroQuadrado)

    area <- largura * comprimento
    preco <- area * valorMetroQuadrado

    escreval()
    escreval("# Área do terreno: ", area:1:2, " m².")
    escreval("# Preço do terreno: R$ ", preco:1:2, ".")

fimalgoritmo
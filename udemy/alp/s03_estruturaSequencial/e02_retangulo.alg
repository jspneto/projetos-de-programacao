algoritmo "retangulo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Terreno:
    //
    // Fazer um programa para ler as medidas da base e da altura de um
    // retângulo. Em seguida, mostrar o valor da área, do perímetro e da
    // diagonal deste retângulo, com quatro casas decimais, conforme exemplos.

var

    base, altura, area, perimetro, diagonal: real

inicio

    escreval("Programa para Calcular as Medidas de um Retângulo")
    escreval()
    escreva("# Digite a medida da base: ")
    leia(base)
    escreva("# Digite a medida da altura: ")
    leia(altura)

    area <- base * altura
    perimetro <- 2 * (base + altura)
    diagonal <- raizq(exp(base, 2) + exp(altura, 2))

    escreval()
    escreval("# Área do retângulo: ", area:1:4, " ua.")
    escreval("# Perímetro do retângulo: ", perimetro:1:4, " uc.")
    escreval("# Diagonal do retângulo: ", diagonal:1:4, " uc.")

fimalgoritmo
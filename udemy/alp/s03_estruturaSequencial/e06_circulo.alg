algoritmo "circulo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Círculo:
    //
    // Fazer um programa para ler o valor "r" do raio de um círculo, e depois
    // mostrar o valor da área do círculo com três casas decimais. A fórmula
    // da área do círculo é a seguinte: area = Pi*r². Você pode usar o valor
    // de Pi fornecido pela biblioteca da sua linguagem de programação, ou
    // então, se preferir, use diretamente o valor 3.14159.

var

    raio, area: real

inicio

    escreval("Programa para Calcular a Área de um Círculo")
    escreval()
    escreva("# Digite a medida do raio: ")
    leia(raio)

    area <- pi * exp(raio, 2)

    escreval()
    escreval("# Área do círculo: ", area:1:3, " ua.")

fimalgoritmo
algoritmo "medidas"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Medidas:
    //
    // Fazer um programa para ler três medidas A, B e C. Em seguida, calcular
    // e mostrar (imprimir os dados com quatro casas decimais):
    //
    // a) a área do quadrado que tem lado A
    // b) a área do triângulo retângulo que base A e altura B
    // c) a área do trapézio que tem bases A e B, e altura C

var

    a, b, c, areaQuadrado, areaTriangulo, areaTrapezio: real
    msgQuadrado, msgTriangulo, msgTrapezio: caractere

inicio

    escreval("Programa para Calcular as Áreas de Três Polígonos")
    escreval()
    escreva("# Digite a medida A: ")
    leia(a)
    escreva("# Digite a medida B: ")
    leia(b)
    escreva("# Digite a medida C: ")
    leia(c)

    areaQuadrado <- exp(a, 2)
    areaTriangulo <- (a * b) / 2
    areaTrapezio <- ((a + b) * c) / 2

    msgQuadrado <- "# Área do quadrado de lado A: "
    msgTriangulo <- "# Área do triângulo de base A e altura B: "
    msgTrapezio <- "# Área do trapézio de bases A e B e altura C: "

    escreval()
    escreval(msgQuadrado, areaQuadrado:1:4, " ua.")
    escreval(msgTriangulo, areaTriangulo:1:4, " ua.")
    escreval(msgTrapezio, areaTrapezio:1:4, " ua.")

fimalgoritmo
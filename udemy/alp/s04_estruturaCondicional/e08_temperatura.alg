algoritmo "temperatura"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Temperatura:
    //
    // Deseja-se converter uma medida de temperatura da escala Celsius para
    // Fahrenheit ou vice-versa. Para isso, você deve construir um programa
    // que leia a letra "C" ou a letra "F", indicando em qual escala vai ser
    // informada uma temperatura. Em seguida o programa deve mostrar a
    // temperatura na outra escala com duas casas decimais. A seguir é dada
    // a fórmula para converter de Fahrenheit para Celsius (você deve deduzir
    // a fórmula de Celsius para Fahrenheit): C = (5/9) * (F - 32)
    //
    // Celsius para Fahrenheit: F = (9/5) * C + 32

var

    temperatura, temperaturaConvertida: real
    escala, msgSaida: caractere

inicio

    escreval("Programa para Converter uma Temperatura")
    escreval()
    escreva("# Digite a escala da temperatura (C/F): ")
    leia(escala)

    se ((escala <> "C") e (escala <> "F")) entao

        escreval()
        escreval("# Escala de temperatura desconhecida.")

    senao

        escreva("# Digite a temperatura: ")
        leia(temperatura)

        se (escala = "C") entao

            temperaturaConvertida <- (9/5) * temperatura + 32
            escala <- "F"

        senao

            temperaturaConvertida <- (5/9) * (temperatura - 32)
            escala <- "C"

        fimse

        msgSaida <- "Temperatura convertida: "

        escreval()
        escreval(msgSaida, temperaturaConvertida:1:2, "° ", escala, ".")

    fimse

fimalgoritmo
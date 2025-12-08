algoritmo "tempoDejogo"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Tempo de Jogo:
    //
    // Leia a hora inicial e a hora final de um jogo. A seguir calcule a
    // duração do jogo, sabendo que o mesmo pode começar em um dia e terminar
    // em outro, tendo uma duração mínima de 1 hora e máxima de 24 horas.

var

    horaInicial, horaFinal, duracao: inteiro

inicio

    escreval("Programa para Calcular o Tempo de Duração de um Jogo")
    escreval()
    escreva("# Digite a hora em que o jogo começou: ")
    leia(horaInicial)

    se ((horaInicial < 0) ou (horaInicial > 23)) entao

        escreval()
        escreval("# Hora inicial inválida.")

    senao

        escreva("# Digite a hora em que o jogo terminou: ")
        leia(horaFinal)

        se((horaFinal < 0) ou (horaFinal > 23)) entao

            escreval()
            escreval("# Hora final inválida.")

        senao

            se (horaInicial < horaFinal) entao

                duracao <- horaFinal - horaInicial

            senao

                duracao <- horaFinal + (24 - horaInicial)

            fimse

        fimse

    fimse

    escreval()
    escreval("# Tempo de duração do jogo: ", duracao, " horas.")

fimalgoritmo
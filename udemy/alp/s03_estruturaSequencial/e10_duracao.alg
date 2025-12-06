algoritmo "duracao"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Duração:
    //
    // Fazer um programa para ler uma duração de tempo em segundos, daí
    // imprimir na tela esta duração no formato horas:minutos:segundos.

var

    horas, minutos, segundos, tempo: inteiro

inicio

    escreval("Programa para Converter uma Medida de Tempo")
    escreval()
    escreva("# Digite o tempo (em segundos): ")
    leia(tempo)

    segundos <- tempo % 60
    minutos <- tempo \ 60
    horas <- minutos \ 60
    minutos <- minutos % 60

    escreval()
    escreva("# O tempo de ", tempo, " segundo(s) equivale a")
    escreval(" (horas : minutos : segundos): ")
    escreval("  ", horas, " : ", minutos, " : ", segundos)

fimalgoritmo
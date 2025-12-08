algoritmo "mediaIdades"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Média Idades:
    //
    // Faça um programa para ler um número indeterminado de dados, contendo,
    // cada um, a idade de um indivíduo. O último dado, que não entrará nos
    // cálculos, contém um valor de idade negativa. Calcular e imprimir a
    // idade média deste grupo de indivíduos. Se for entrado um valor negativo
    // na primeira vez, mostrar a mensagem "IMPOSSIVEL CALCULAR".

var

    idade, somaIdades, numPessoas: inteiro
    media: real

inicio

    escreval("Programa para Calcular a Média de Idade entre N Pessoas")
    escreval()
    escreva("# Digite a idade da 1ª pessoa: ")
    leia(idade)

    se (idade < 0) entao

        escreval()
        escreval("# Impossível calcular.")

    senao

        numPessoas <- 1
        somaIdades <- 0

        enquanto (idade >= 0) faca

            somaIdades <- somaIdades + idade
            numPessoas <- numPessoas + 1

            escreva("# Digite a idade da ", numPessoas, "ª pessoa: ")
            leia(idade)

        fimenquanto

        media <- somaIdades / (numPessoas - 1)

        escreval()
        escreval("# Média de idade: ", media:1:2, " anos.")

    fimse

fimalgoritmo
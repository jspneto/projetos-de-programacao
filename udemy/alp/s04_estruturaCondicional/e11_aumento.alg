algoritmo "aumento"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Aumento:
    //
    // Uma empresa vai conceder um aumento percentual de salário aos seus
    // funcionários dependendo de quanto cada pessoa ganha, conforme tabela
    // ao lado. Fazer um programa para ler o salário de uma pessoa, daí
    // mostrar qual o novo salário desta pessoa depois do aumento, quanto
    // foi o aumento e qual foi a porcentagem de aumento.
    //
    // Salário atual                            Aumento
    //
    // Até R$ 1000.00                           20%
    // Acima de R$ 1000.00 até R$ 3000.00       15%
    // Acima de R$ 3000.00 até R$ 8000.00       10%
    // Acima de R$ 8000.00                      5%

var

    percAumento: inteiro
    salarioAtual, salarioReajustado, aumentoSalario: real

inicio

    escreval("Programa para Calcular o Aumento Salarial de um Funcionário")
    escreval()
    escreva("# Digite o salário do funcionário: R$ ")
    leia(salarioAtual)

    se (salarioAtual <= 1000.00) entao

        percAumento <- 20
        
    senao

        se ((salarioAtual > 1000.00) e (salarioAtual <= 3000.00)) entao

            percAumento <- 15
            
        senao

            se ((salarioAtual > 3000.00) e (salarioAtual <= 8000.00)) entao

                percAumento <- 10

            senao

                percAumento <- 5

            fimse

        fimse

    fimse

    aumentoSalario <- (percAumento * salarioAtual) / 100
    salarioReajustado <- salarioAtual + aumentoSalario

    escreval()
    escreval("# Percentual de aumento: ", percAumento, "%.")
    escreval("# Aumento salarial: R$ ", aumentoSalario:1:2, ".")
    escreval("# Salario reajustado: R$ ", salarioReajustado:1:2, ".")

fimalgoritmo
algoritmo "comerciante"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Comerciante:
    //
    // Um comerciante deseja fazer o levantamento do lucro das mercadorias que
    // ele comercializa. Para isto, mandou digitar um conjunto de N mercadorias,
    // cada uma contendo nome, preço de compra e preço de venda das mesmas.
    // Fazer um programa que leia tais dados e determine e escreva quantas
    // mercadorias proporcionaram:
    //
    // a) lucro < 10%
    // b) 10% ≤ lucro ≤ 20%
    // c) lucro > 20%
    //
    // Determine e escreva também o valor total de compra e de venda de todas
    // as mercadorias, assim como o lucro total.

var

    i, n: inteiro
    compraTotal, vendaTotal, lucroTotal: real
    percLucro, lucroMenor10, lucroEntre10e20, lucroMaior20: real
    precoCompra, precoVenda: vetor [0..9] de real
    nomes: vetor [0..9] de caractere

procedimento validarEntrada(var entrada: inteiro; limI: inteiro; limS: inteiro)
    inicio
        enquanto ((entrada < limI) ou (entrada > limS)) faca
            escreva("  Valor inválido. Digite novamente: ")
            leia(entrada)
        fimenquanto
fimprocedimento

funcao calcularPercLucro(mercadoria: inteiro): real
    var
        lucro, percLucro: real
    inicio
        lucro <- precoVenda[mercadoria] - precoCompra[mercadoria]
        percLucro <- (lucro * 100) / precoCompra[mercadoria]
    retorne percLucro
fimfuncao

funcao somarPrecoCompra(comprimento: inteiro): real
    var
        j: inteiro
        soma: real
    inicio
        soma <- 0
        para j de (0) ate (comprimento - 1) faca
            soma <- soma + precoCompra[j]
        fimpara
    retorne soma
fimfuncao

funcao somarPrecoVenda(comprimento: inteiro): real
    var
        j: inteiro
        soma: real
    inicio
        soma <- 0
        para j de (0) ate (comprimento - 1) faca
            soma <- soma + precoVenda[j]
        fimpara
    retorne soma
fimfuncao

inicio

    escreval("Programa para Analisar o Lucro de uma Mercearia")
    escreval()
    escreva("# Digite o número de mercadorias: ")
    leia(n)
    validarEntrada(n, 1, 10)

    para i de (0) ate (n - 1) faca

        escreval()
        escreval("# Mercadoria ", i+1, ":")
        escreva("  Digite o nome: ")
        leia(nomes[i])
        escreva("  Digite o preço de compra: R$ ")
        leia(precoCompra[i])
        escreva("  Digite o prçeo de venda: R$ ")
        leia(precoVenda[i])

    fimpara

    compraTotal <- somarPrecoCompra(n)
    vendaTotal <- somarPrecoVenda(n)
    lucroTotal <- vendaTotal - compraTotal

    lucroMenor10 <- 0
    lucroEntre10e20 <- 0
    lucroMaior20 <- 0

    para i de (0) ate (n - 1) faca

        percLucro <- calcularPercLucro(i)

        se (percLucro < 10.0) entao

            lucroMenor10 <- lucroMenor10 + 1

        senao

            se ((percLucro >= 10.0) e (percLucro < 20.0)) entao

                lucroEntre10e20 <- lucroEntre10e20 + 1

            senao

                lucroMaior20 <- lucroMaior20 + 1

            fimse

        fimse
    
    fimpara

    escreval()
    escreval("# Produtos com lucro abaixo de 10%: ", lucroMenor10, ".")
    escreval("# Produtos com lucro entre 10% e 20%: ", lucroEntre10e20, ".")
    escreval("# Produtos com lucro maior que 20%: ", lucroMaior20, ".")
    escreval("# Valor total da compra: R$ ", compraTotal:1:2, ".")
    escreval("# Valor total da venda: R$ ", vendaTotal:1:2, ".")
    escreval("# Lucro total: R$ ", lucroTotal:1:2, ".")

fimalgoritmo
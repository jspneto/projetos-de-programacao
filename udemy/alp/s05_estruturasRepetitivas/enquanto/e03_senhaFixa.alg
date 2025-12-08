algoritmo "senhaFixa"

    // Curso       : Algorítmos e Lógica de Programação
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna

    // Problema Senha Fixa:
    //
    // Escreva um programa que repita a leitura de uma senha até que ela seja
    // válida. Para cada leitura de senha incorreta informada, escrever a
    // mensagem "Senha Invalida! Tente novamente:". Quando a senha for
    // informada corretamente deve ser impressa a mensagem "Acesso Permitido"
    // e o algoritmo encerrado. Considere que a senha correta é o valor 2002.

var

    senha: caractere

inicio

    escreval("Programa para Verificar se uma Senha é Válida")
    escreval()
    escreva("# Digite a senha: ")
    leia(senha)

    enquanto (senha <> "2002") faca

        escreva("  Senha inválida. Digite novamente: ")
        leia(senha)

    fimenquanto

    escreval()
    escreval("# Acesso permitido.")

fimalgoritmo
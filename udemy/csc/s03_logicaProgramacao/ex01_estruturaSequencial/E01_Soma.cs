using System;

namespace s03_logicaProgramacao.ex01_estruturaSequencial
{
    
    // Curso       : C# Completo
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna
    
    // Exercício 01 (Soma):
    // 
    // Faça um programa para ler dois valores inteiros, e depois mostre na tela
    // a soma desses números com uma mensagem explicativa, conforme exemplos.

    internal class E01_Soma
    {
        
        public static void Executar()
        {
            
            Console.WriteLine("Programa para Somar Dois Números Inteiros");
            Console.WriteLine();
            Console.Write("# Digite o 1º número: ");
            int num1 = int.Parse(Console.ReadLine()!);
            Console.Write("# Digite o 2º número: ");
            int num2 = int.Parse(Console.ReadLine()!);

            int soma = num1 + num2;

            Console.WriteLine();
            Console.WriteLine($"# A soma entre {num1} e {num2} é: {soma}.");

        }

    }

}
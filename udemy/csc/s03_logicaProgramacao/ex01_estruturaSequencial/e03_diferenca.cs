using System;

namespace s03_logicaProgramacao.ex01_estruturaSequencial
{
    
    // Curso       : C# Completo
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna
    
    // Exercício 03 (Diferença):
    //
    // Fazer um programa para ler quatro valores inteiros A, B, C e D. A
    // seguir, calcule e mostre a diferença do produto de A e B pelo produto
    // de C e D segundo a fórmula: DIFERENCA = (A * B - C * D).

    internal class E03_diferenca
    {
        
        static void Main(string[] args)
        {
            
            string msgIntroducao = "Programa para Calcular a Diferença do";
            msgIntroducao += " Produto de Quatro Números Inteiros";
            Console.WriteLine(msgIntroducao);
            Console.WriteLine();
            Console.Write("# Digite o número A: ");
            int a = int.Parse(Console.ReadLine()!);
            Console.Write("# Digite o número B: ");
            int b = int.Parse(Console.ReadLine()!);
            Console.Write("# Digite o número C: ");
            int c = int.Parse(Console.ReadLine()!);
            Console.Write("# Digite o número D: ");
            int d = int.Parse(Console.ReadLine()!);

            int diferenca = (a * b) - (c * d);

            Console.WriteLine();
            Console.WriteLine($"# Diferença (a * b) - (c * d): {diferenca}.");

        }

    }

}
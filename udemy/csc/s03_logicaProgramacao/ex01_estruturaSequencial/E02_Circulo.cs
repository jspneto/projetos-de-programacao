using System;
using System.Globalization;

namespace s03_logicaProgramacao.ex01_estruturaSequencial
{
    
    // Curso       : C# Completo
    // Instrutor   : Nelio Alves
    // Autor(a)    : José de Senna
    
    // Exercício 02 (Círculo):
    //
    // Faça um programa para ler o valor do raio de um círculo, e depois
    // mostre o valor da área deste círculo com quatro casas decimais,
    // conforme exemplos.
    //
    // Fórmula da área: area = pi * raio²
    //
    // Considere o valor de pi = 3.14159

    internal class E02_Circulo
    {
        
        public static void Executar()
        {
            
            Console.WriteLine("Programa para Calcular a Área de um Círculo");
            Console.WriteLine();
            Console.WriteLine("# Digite a medida do raio: ");
            string s = Console.ReadLine()!;
            double raio = double.Parse(s, CultureInfo.InvariantCulture);

            double PI = 3.14159;
            double area = PI * Math.Pow(raio, 2);

            string msgArea = area.ToString("F4", CultureInfo.InvariantCulture);
            Console.WriteLine();
            Console.WriteLine($"# Área do Círculo: {msgArea} ua.");

        }

    }

}
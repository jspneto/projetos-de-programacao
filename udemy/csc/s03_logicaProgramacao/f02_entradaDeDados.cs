using System;
using System.Globalization;

namespace S03_logicaProgramacao
{

    internal class F02_entradaDeDados
    {

        static void Main(string[] args)
        {

            Console.Write("Entre com o seu nome completo: ");
            string nome = Console.ReadLine()!;

            Console.Write("Quantos quartos têm na sua casa: ");
            int quartos = int.Parse(Console.ReadLine()!);

            Console.Write("Entre com o preço de um produto: ");
            string s = Console.ReadLine()!;
            double preco = double.Parse(s, CultureInfo.InvariantCulture);

            Console.Write("Entre com seu último nome, idade e altura: ");
            string[] vet = Console.ReadLine()!.Split(' ');
            string ultimoNome = vet[0];
            int idade = int.Parse(vet[1]);
            double altura = double.Parse(vet[2], CultureInfo.InvariantCulture);

            string msgPre = preco.ToString("F2", CultureInfo.InvariantCulture);
            string msgAt = altura.ToString("F2", CultureInfo.InvariantCulture);
            Console.WriteLine();
            Console.WriteLine("Você digitou:");
            Console.WriteLine();
            Console.WriteLine($"Nome Completo: {nome}");
            Console.WriteLine($"Quartos: {quartos}");
            Console.WriteLine($"Preço: R$ {msgPre}");
            Console.WriteLine($"Último Nome: {ultimoNome}");
            Console.WriteLine($"Idade: {idade}");
            Console.WriteLine($"Altura: {msgAt}");

        }

    }

}
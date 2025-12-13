using System;
using System.Globalization;

namespace s03_logicaProgramacao.ex00_exerciciosFixacao
{
    
    internal class E01_TiposDeDados
    {
        
        public static void Executar()
        {
            
            string produto1 = "Computador";
            string produto2 = "Mesa de escritório";

            byte idade = 30;
            int codigo = 5290;
            char genero = 'M';

            double preco1 = 2100.0;
            double preco2 = 650.50;
            double medida = 53.234567;

            string p1 = preco1.ToString("F2");
            string p2 = preco2.ToString("F2");            
            Console.WriteLine("Produtos:");
            Console.WriteLine($"{produto1}, cujo preço é R$ {p1}");
            Console.WriteLine($"{produto2}, cujo preço é R$ {p2}");
            
            Console.WriteLine();
            Console.Write($"Registro: {idade} anos de idade,");
            Console.WriteLine($" código {codigo} e gênero: {genero}");

            string mOC = medida.ToString("F8");
            string mAr = medida.ToString("F3");
            string mDP = medida.ToString("F3", CultureInfo.InvariantCulture);
            Console.WriteLine();
            Console.WriteLine($"Medida com oito casas decimais: {mOC}");
            Console.WriteLine($"Arredondado (três casas decimais): {mAr}");
            Console.WriteLine($"Separador decimal invariant culture: {mDP}");

        }

    }

}
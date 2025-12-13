using System;
using System.Collections.Generic;
using s03_logicaProgramacao.ex00_exerciciosFixacao;
using s03_logicaProgramacao.ex01_estruturaSequencial;

namespace s03_logicaProgramacao
{

    internal class Program
    {
        
        static void Main(string[] args)
        {
            
            ExibirMenuPrincipal();

        }

        private static void ExibirMenuPrincipal()
        {
            
            while (true)
            {
                
                Console.Clear();
                Console.WriteLine("Seção 03: Lógica de Programação");
                Console.WriteLine();
                Console.WriteLine("# Menu de seleção de tópicos:");
                Console.WriteLine();
                Console.WriteLine("  0: Exercícios de Fixação");
                Console.WriteLine("  1: Estrutura Sequencial");
                Console.WriteLine();
                Console.WriteLine("  QUALQUER TECLA: Sair");
                Console.WriteLine();

                Console.Write("# Escolha o topico: ");
                string opcao = (Console.ReadLine() ?? "").Trim();

                switch (opcao)
                {
                    
                    case "0":

                        ExibirMenuTopico(

                            titulo: "Tópico 00: Exercícios de Fixação",
                            opcoes: new Dictionary<string, (string Label, 
                                                            Action Executar)>
                            {
                                
                                {"1", ("E01_TiposDeDados",
                                        E01_TiposDeDados.Executar)},
                                {"2", ("E02_EntradaDeDados",
                                        E02_EntradaDeDados.Executar)},

                            }

                        );
                        break;

                    case "1":

                        ExibirMenuTopico(

                            titulo: "Tópico 01: Estrutura Sequencial",
                            opcoes: new Dictionary<string, (string Label, 
                                                            Action Executar)>
                            {
                                
                                {"1", ("E01_Soma",
                                       E01_Soma.Executar)},
                                {"2", ("E02_Circulo",
                                       E02_Circulo.Executar)},
                                {"3", ("E03_Diferenca",
                                       E03_Diferenca.Executar)},

                            }

                        );
                        break;

                    default:

                        return;

                }

            }

        }

        private static void ExibirMenuTopico(

            string titulo,
            Dictionary<string, (string Label, Action Executar)> opcoes

        )
        {
            
            while (true)
            {
                
                Console.Clear();
                Console.WriteLine(titulo);
                Console.WriteLine();
                Console.WriteLine("# Menu de seleção de exercícios: ");
                Console.WriteLine();

                foreach (var opcao in opcoes)
                {
                    
                    Console.WriteLine($"  {opcao.Key}: {opcao.Value.Label}");

                }

                Console.WriteLine();
                Console.WriteLine("  QUALQUER TECLA: Voltar");
                Console.WriteLine();

                Console.Write("# Escolha o exercício: ");
                string exercicio = (Console.ReadLine() ?? "").Trim();

                if (opcoes.TryGetValue(exercicio, out var item))
                {

                    Console.Clear();
                    item.Executar();

                    Console.WriteLine();
                    Console.WriteLine("Pressione QUALQUER TECLA para voltar.");
                    Console.ReadLine();

                }
                else
                {

                    return;

                }

            }

        }

    }

}
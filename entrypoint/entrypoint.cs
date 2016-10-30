using System;

namespace entypoint.Example
{
    class Entrypoint
    {
        public static void Main(string[] args)
        {
            Console.WriteLine(nameof(Main));
        }

        public static void NotUsed()
        {
            Console.WriteLine(nameof(NotUsed));
        }

        public static void AnotherNotUsed()
        {
            Console.WriteLine(nameof(AnotherNotUsed));
        }
    }
}
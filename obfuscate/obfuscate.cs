using System;

namespace obfuscate
{
    class obfuscate
    {
        static Random r = new Random();
        static void Main(string[] args)
        {
            Console.WriteLine($"Hello obfusacate. Your password is: {CheckPassword()}");
        }

        static int CheckPassword()
        {
            return r.Next() % 1337;
        }
    }
}
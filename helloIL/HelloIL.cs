using System;

namespace HelloIL 
{
    class HelloFromIL 
    {
        public static void Main(string[] args){
            new HelloFromIL().Greet();
        }

        public void Greet()
        {
            Console.WriteLine("Hello IL");
        }
    }

}
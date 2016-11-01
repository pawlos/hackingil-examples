using System;

namespace try_fault
{
    class try_fault_example
    {
        public static void Main(string[] args)
        {
            AppDomain.CurrentDomain.UnhandledException += UnhandledExceptionTrapper;
            try_catch();
            try_finally();
        }

        public static void try_catch()
        {
            try
            {
                Console.WriteLine("try_catch: try");
                throw new Exception("try_catch");
            }
            catch (System.Exception)
            {
                Console.WriteLine("try_catch: catch");
            }
        }

        public static void try_finally()
        {
            try
            {
                Console.WriteLine("try_finally: try");
                throw new Exception("try_finally");
            }
            finally
            {
                Console.WriteLine("try_finally: finally");
            }
        }


        public static void UnhandledExceptionTrapper(object sender, UnhandledExceptionEventArgs e)
        {
            Console.WriteLine("Unhandled exception: ", e);
        }
    }
}
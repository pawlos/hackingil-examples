using System;

namespace try_fault
{
    class try_fault_example
    {
        public static void Main(string[] args)
        {
            bool shouldThrow = args.Length > 0;
            AppDomain.CurrentDomain.UnhandledException += UnhandledExceptionTrapper;
            try_catch(shouldThrow);
            try_finally(shouldThrow);
        }

        public static void try_catch(bool shouldThrow)
        {
            try
            {
                Console.WriteLine("try_catch: try");
                if (shouldThrow)
                    throw new Exception("try_catch");
            }
            catch (System.Exception)
            {
                Console.WriteLine("try_catch: catch");
            }
        }

        public static void try_finally(bool shouldThrow)
        {
            try
            {
                Console.WriteLine("try_finally: try");
                if (shouldThrow)
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
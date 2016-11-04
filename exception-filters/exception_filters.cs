using System;

namespace exception_filters
{
    class exception_filters_demo
    {
        static void Main(string[] args)
        {
            bool shouldCatch = args.Length > 0;
            try
            {
                throw new Exception();
            }
            catch (Exception ex) when (PleaseCatchAll(ex, shouldCatch))
            {
                Console.WriteLine("We got it!");
            }
        }

        static bool PleaseCatchAll(Exception ex, bool shouldCatch)
        {
            return shouldCatch;
        }
    }
}
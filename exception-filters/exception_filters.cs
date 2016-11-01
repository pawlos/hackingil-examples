using System;

namespace exception_filters
{
    class exception_filters_demo
    {
        static void Main(string[] args)
        {
            try
            {
                throw new Exception();
            }
            catch (Exception ex) when (PleaseCatchAll(ex))
            {
                Console.WriteLine("We got it!");
            }
        }

        static bool PleaseCatchAll(Exception ex)
        {
            return true;
        }
    }
}
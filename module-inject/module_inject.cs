using System;

namespace module_inject
{
	public class Initializer
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Main");
			new Initializer().Init();
		}

		static Initializer()
		{
			Console.WriteLine("Initializer cctor()");
		}

		public Initializer()
		{
			Console.WriteLine("Initializer ctor()");
		}

		public void Init()
		{
			Console.WriteLine("Initialize.Init()");
		}
	}


	public class Cache
	{
		static Cache()
		{
			Console.WriteLine("Inside Cache .cctor");
		}

		public Cache() 
		{
			Console.WriteLine("Inside Cache .ctor");
		}

		public static void Init()
		{
			Console.WriteLine("Cache.Init()");
		}
	}
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
  .ver 4:0:0:0
}
.assembly HelloIL
{
}
.module HelloIL.exe
.class private auto ansi beforefieldinit HelloIL.HelloFromIL
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    .maxstack  8
    IL_0000:  nop
    IL_0001:  newobj     instance void HelloIL.HelloFromIL::.ctor()
    IL_0006:  call       instance void HelloIL.HelloFromIL::Greet()
    IL_000b:  nop
    IL_000c:  ret
  }

  .method public hidebysig instance void 
          Greet() cil managed
  {
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Hello IL"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  }

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  }

}
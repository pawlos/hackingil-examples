
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly try_fault
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module try_fault.exe
// MVID: {9A1E32FD-5FFF-4AD2-9B64-54333DD73B7D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02590000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit try_fault.try_fault_example
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       37 (0x25)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.AppDomain [mscorlib]System.AppDomain::get_CurrentDomain()
    IL_0006:  ldnull
    IL_0007:  ldftn      void try_fault.try_fault_example::UnhandledExceptionTrapper(object,
                                                                                     class [mscorlib]System.UnhandledExceptionEventArgs)
    IL_000d:  newobj     instance void [mscorlib]System.UnhandledExceptionEventHandler::.ctor(object,
                                                                                              native int)
    IL_0012:  callvirt   instance void [mscorlib]System.AppDomain::add_UnhandledException(class [mscorlib]System.UnhandledExceptionEventHandler)
    IL_0017:  nop
    IL_0018:  call       void try_fault.try_fault_example::try_catch()
    IL_001d:  nop
    IL_001e:  call       void try_fault.try_fault_example::try_finally()
    IL_0023:  nop
    IL_0024:  ret
  } // end of method try_fault_example::Main

  .method public hidebysig static void  try_catch() cil managed
  {
    // Code size       41 (0x29)
    .maxstack  1
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "try_catch: try"
      IL_0007:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_000c:  nop
      IL_000d:  ldstr      "try_catch"
      IL_0012:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
      IL_0017:  throw

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0018:  pop
      IL_0019:  nop
      IL_001a:  ldstr      "try_catch: catch"
      IL_001f:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0024:  nop
      IL_0025:  nop
      IL_0026:  leave.s    IL_0028

    }  // end handler
    IL_0028:  ret
  } // end of method try_fault_example::try_catch

  .method public hidebysig static void  try_finally() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  1
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "try_finally: try"
      IL_0007:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_000c:  nop
      IL_000d:  ldstr      "try_finally"
      IL_0012:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
      IL_0017:  throw

    }  // end .try
    finally
    {
      IL_0018:  nop
      IL_0019:  ldstr      "try_finally: finally"
      IL_001e:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0023:  nop
      IL_0024:  nop
      IL_0025:  endfinally
    }  // end handler
  } // end of method try_fault_example::try_finally

  .method public hidebysig static void  UnhandledExceptionTrapper(object sender,
                                                                  class [mscorlib]System.UnhandledExceptionEventArgs e) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Unhandled exception: "
    IL_0006:  ldarg.1
    IL_0007:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method try_fault_example::UnhandledExceptionTrapper

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method try_fault_example::.ctor

} // end of class try_fault.try_fault_example


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file try_fault.res

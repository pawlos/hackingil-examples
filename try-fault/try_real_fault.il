
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
// MVID: {CC3AC84D-0CFA-477B-B665-36A7B74EAF6D}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x013A0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit try_fault.try_fault_example
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       45 (0x2d)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldlen
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  stloc.0
    IL_0007:  call       class [mscorlib]System.AppDomain [mscorlib]System.AppDomain::get_CurrentDomain()
    IL_000c:  ldnull
    IL_000d:  ldftn      void try_fault.try_fault_example::UnhandledExceptionTrapper(object,
                                                                                     class [mscorlib]System.UnhandledExceptionEventArgs)
    IL_0013:  newobj     instance void [mscorlib]System.UnhandledExceptionEventHandler::.ctor(object,
                                                                                              native int)
    IL_0018:  callvirt   instance void [mscorlib]System.AppDomain::add_UnhandledException(class [mscorlib]System.UnhandledExceptionEventHandler)
    IL_001d:  nop
    IL_001e:  ldloc.0
    IL_001f:  call       void try_fault.try_fault_example::try_catch(bool)
    IL_0024:  nop
    IL_0025:  ldloc.0
    IL_0026:  call       void try_fault.try_fault_example::try_finally(bool)
    IL_002b:  nop
    IL_002c:  ret
  } // end of method try_fault_example::Main

  .method public hidebysig static void  try_catch(bool shouldThrow) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "try_catch: try"
      IL_0007:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_000c:  nop
      IL_000d:  ldarg.0
      IL_000e:  stloc.0
      IL_000f:  ldloc.0
      IL_0010:  brfalse.s  IL_001d

      IL_0012:  ldstr      "try_catch"
      IL_0017:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
      IL_001c:  throw

      IL_001d:  nop
      IL_001e:  leave.s    IL_0030

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0020:  pop
      IL_0021:  nop
      IL_0022:  ldstr      "try_catch: catch"
      IL_0027:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_002c:  nop
      IL_002d:  nop
      IL_002e:  leave.s    IL_0030

    }  // end handler
    IL_0030:  ret
  } // end of method try_fault_example::try_catch

  .method public hidebysig static void  try_finally(bool shouldThrow) cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "try_finally: try"
      IL_0007:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_000c:  nop
      IL_000d:  ldarg.0
      IL_000e:  stloc.0
      IL_000f:  ldloc.0
      IL_0010:  brfalse.s  IL_001d

      IL_0012:  ldstr      "try_finally"
      IL_0017:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
      IL_001c:  throw

      IL_001d:  nop
      IL_001e:  leave.s    IL_002e

    }  // end .try
    fault
    {
      IL_0020:  nop
      IL_0021:  ldstr      "try_finally: fault"
      IL_0026:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_002b:  nop
      IL_002c:  nop
      IL_002d:  endfault
    }  // end handler
    IL_002e:  ret
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


//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly exception_filters
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module exception_filters.exe
// MVID: {D3A2F960-CBC4-4B9C-A111-B04293EE71A5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00E60000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit exception_filters.exception_filters_demo
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       51 (0x33)
    .maxstack  2
    .locals init (class [mscorlib]System.Exception V_0,
             bool V_1)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  newobj     instance void [mscorlib]System.Exception::.ctor()
      IL_0007:  throw

    }  // end .try
    filter
    {
      IL_0008:  isinst     [mscorlib]System.Exception
      IL_000d:  dup
      IL_000e:  brtrue.s   IL_0014

      IL_0010:  pop
      IL_0011:  ldc.i4.0
      IL_0012:  br.s       IL_0020

      IL_0014:  stloc.0
      IL_0015:  ldloc.0
      IL_0016:  call       bool exception_filters.exception_filters_demo::PleaseCatchAll(class [mscorlib]System.Exception)
      IL_001b:  stloc.1
      IL_001c:  ldloc.1
      IL_001d:  ldc.i4.0
      IL_001e:  cgt.un
      IL_0020:  endfilter
    }  // end filter
    {  // handler
      IL_0022:  pop
      IL_0023:  nop
      IL_0024:  ldstr      "We got it!"
      IL_0029:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_002e:  nop
      IL_002f:  nop
      IL_0030:  leave.s    IL_0032

    }  // end handler
    IL_0032:  ret
  } // end of method exception_filters_demo::Main

  .method private hidebysig static bool  PleaseCatchAll(class [mscorlib]System.Exception ex) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method exception_filters_demo::PleaseCatchAll

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method exception_filters_demo::.ctor

} // end of class exception_filters.exception_filters_demo


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file filters.res

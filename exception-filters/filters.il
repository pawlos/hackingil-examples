
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
// MVID: {7A872B51-DA7E-47F0-878D-5898F942AA11}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x01070000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit exception_filters.exception_filters_demo
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       58 (0x3a)
    .maxstack  2
    .locals init (bool V_0,
             class [mscorlib]System.Exception V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldlen
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  nop
      IL_0008:  newobj     instance void [mscorlib]System.Exception::.ctor()
      IL_000d:  throw

    }  // end .try
    filter
    {
      IL_000e:  isinst     [mscorlib]System.Exception
      IL_0013:  dup
      IL_0014:  brtrue.s   IL_001a

      IL_0016:  pop
      IL_0017:  ldc.i4.0
      IL_0018:  br.s       IL_0027

      IL_001a:  stloc.1
      IL_001b:  ldloc.1
      IL_001c:  ldloc.0
      IL_001d:  call       bool exception_filters.exception_filters_demo::PleaseCatchAll(class [mscorlib]System.Exception,
                                                                                         bool)
      IL_0022:  stloc.2
      IL_0023:  ldloc.2
      IL_0024:  ldc.i4.0
      IL_0025:  cgt.un
      IL_0027:  endfilter
    }  // end filter
    {  // handler
      IL_0029:  pop
      IL_002a:  nop
      IL_002b:  ldstr      "We got it!"
      IL_0030:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0035:  nop
      IL_0036:  nop
      IL_0037:  leave.s    IL_0039

    }  // end handler
    IL_0039:  ret
  } // end of method exception_filters_demo::Main

  .method private hidebysig static bool  PleaseCatchAll(class [mscorlib]System.Exception ex,
                                                        bool shouldCatch) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
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

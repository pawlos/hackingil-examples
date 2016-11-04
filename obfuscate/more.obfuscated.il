
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly ''
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module obfuscate.exe
// MVID: {A1FECE52-C96C-40FE-A320-58D9F9B04AEB}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x025F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit ''.''
       extends [mscorlib]System.Object
{
  .field private static class [mscorlib]System.Random ''
  .method private hidebysig static void  ''(string[] args) cil managed
  {
    .entrypoint
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Hello obfusacate. Your password is: {0}"
    IL_0006:  call       int32 ''.''::''()
    IL_000b:  box        [mscorlib]System.Int32
    IL_0010:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0015:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_001a:  nop
    IL_001b:  ret
  } // end of method obfuscate::Main

  .method private hidebysig static int32 
          ''() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [mscorlib]System.Random ''.''::''
    IL_0006:  callvirt   instance int32 [mscorlib]System.Random::Next()
    IL_000b:  ldc.i4     0x539
    IL_0010:  rem
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method obfuscate::CheckPassword

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method obfuscate::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void [mscorlib]System.Random::.ctor()
    IL_0005:  stsfld     class [mscorlib]System.Random ''.''::''
    IL_000a:  ret
  } // end of method obfuscate::.cctor

} // end of class obfuscate.obfuscate


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file obfuscate.res

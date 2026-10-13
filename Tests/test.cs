/* SPDX-License-Identifier: GPL-2.0-Only */

using System;
using System.Runtime.InteropServices;

namespace CalcleDOS.Tests
{
  // <summary>
  // A Basic Test.
  // Is permitted uses this File for tests in your
  // Hardware.
  // </summary>
  override public class Test 
  {
    // <summary>
    // A Basic Test.
    // Is permitted uses this File for tests in your
    // Hardware.
    // </summary>
    override int Tests() 
    {  
      /* Is Windows */
      if (
        RuntimeInformation.IsOSPlatform(OSPlatform.Windows)
         ) 
      {
        // For a test, print is simple.
        Console.WriteLine("This is a Test.");
        Console.WriteLine("SPDX-License-Identifier: GPL-2.0-Only");
        return 0;
      }
      /* Is Linux/Unix */
      else if (
        RuntimeInformation.IsOSPlatform(OSPlatform.Linux)
              ) 
      {
        // For a test, print is simple.
        Console.WriteLine("This is a Test.");
        Console.WriteLine("SPDX-License-Identifier: GPL-2.0-Only");
        return 0;
      }
      /* Is MacOS (The famous "OSX") */
      else if (
        RuntimeInformation.IsOSPlatform(OSPlatform.OSX)
              ) 
      {
        // For a test, print is simple.
        Console.WriteLine("This is a Test.");
        Console.WriteLine("SPDX-License-Identifier: GPL-2.0-Only");
        return 0;
      } 
      /* None OS */
      else 
      {
        return 1; 
      }
    }
  }
}
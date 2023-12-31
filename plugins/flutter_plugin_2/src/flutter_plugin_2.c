#include "flutter_plugin_2.h"

// A very short-lived native function.
//
// For very short-lived functions, it is fine to call them on the main isolate.
// They will block the Dart execution while running the native function, so
// only do this for native functions which are guaranteed to be short-lived.
FFI_PLUGIN_EXPORT intptr_t sum(intptr_t a, intptr_t b) { return a + b; }

FFI_PLUGIN_EXPORT intptr_t sum2(intptr_t a, intptr_t b) { return a + b; }

FFI_PLUGIN_EXPORT intptr_t demo1()
{
  // HMODULE module = LoadLibrary("TSCLIB.dll");
  // // HMODULE module = LoadLibrary("src/TSCLIB.dll");
  // if (module == NULL)
  // {
  //   printf("dll open error!\n");
  //   FreeLibrary(module);
  //   return -1;
  // }
  // else
  // {
  //   printf("dll open success!\n");
  //   FreeLibrary(module);
  // }
  return 1;
}

// FFI_PLUGIN_EXPORT int demo2()
// {
//   return 2;
// }

// A longer-lived native function, which occupies the thread calling it.
//
// Do not call these kind of native functions in the main isolate. They will
// block Dart execution. This will cause dropped frames in Flutter applications.
// Instead, call these native functions on a separate isolate.
FFI_PLUGIN_EXPORT intptr_t sum_long_running(intptr_t a, intptr_t b)
{
  // Simulate work.
#if _WIN32
  Sleep(5000);
#else
  usleep(5000 * 1000);
#endif
  return a + b;
}

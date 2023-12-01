# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_plugin_2_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_plugin_2 SHARED
  "flutter_plugin_2.c"
)

set_target_properties(flutter_plugin_2 PROPERTIES
  PUBLIC_HEADER flutter_plugin_2.h
  OUTPUT_NAME "flutter_plugin_2"
)

target_compile_definitions(flutter_plugin_2 PUBLIC DART_SHARED_LIB)

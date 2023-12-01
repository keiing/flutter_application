#include "include/flutter_plugin_1/flutter_plugin_1_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_plugin_1_plugin.h"

void FlutterPlugin_1PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_plugin_1::FlutterPlugin_1Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

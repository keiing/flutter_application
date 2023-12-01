#ifndef FLUTTER_PLUGIN_FLUTTER_PLUGIN_1_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_PLUGIN_1_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_plugin_1 {

class FlutterPlugin_1Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterPlugin_1Plugin();

  virtual ~FlutterPlugin_1Plugin();

  // Disallow copy and assign.
  FlutterPlugin_1Plugin(const FlutterPlugin_1Plugin&) = delete;
  FlutterPlugin_1Plugin& operator=(const FlutterPlugin_1Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_plugin_1

#endif  // FLUTTER_PLUGIN_FLUTTER_PLUGIN_1_PLUGIN_H_

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.web.dart';
export 'bridge_definitions.dart';

final api = Native2Impl.wasm(WasmModule.initialize(
  kind: const Modules.noModules(root: 'pkg/native_2'),
));
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.4.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';

class Native2Impl implements Native2 {
  final Native2Platform _platform;
  factory Native2Impl(ExternalLibrary dylib) => Native2Impl.raw(Native2Platform(dylib));

  /// Only valid on web/WASM platforms.
  factory Native2Impl.wasm(FutureOr<WasmModule> module) => Native2Impl(module as ExternalLibrary);
  Native2Impl.raw(this._platform);
  Future<void> main({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_main(port_),
      parseSuccessData: _wire2api_unit,
      parseErrorData: null,
      constMeta: kMainConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kMainConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "main",
        argNames: [],
      );

  Future<String> test({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test(port_),
      parseSuccessData: _wire2api_String,
      parseErrorData: null,
      constMeta: kTestConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "test",
        argNames: [],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

// Section: finalizer

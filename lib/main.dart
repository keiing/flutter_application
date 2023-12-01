import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/native.dart' as api1;
import 'src/native_2.dart' as api2;

// import 'package:flutter_rust_bridge_template/main.dart' as api2;
import 'package:flutter_package_1/flutter_package_1.dart';
import 'package:flutter_plugin_1/flutter_plugin_1.dart';

import 'package:flutter_plugin_2/flutter_plugin_2.dart' as flutter_plugin_2;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _platformVersion = 'Unknown';
  final _flutterPlugin_1Plugin = FlutterPlugin_1();

  void _incrementCounter() {
    api1.api.main();
    // print(flutter_plugin_2.sum(1, 2).toDouble());
    // print(flutter_plugin_2.sum2(1, 2).toDouble());
    // flutter_plugin_2.sumAsync(1, 2).then((value) => print(value));
    // _flutterPlugin_1Plugin.getPlatformVersion().then((value) {
    //   print(value);
    // });

    print(flutter_plugin_2.getBindings().demo1());
    
    api1.api.test().then((value) {
      print('api1.test');
      print(value);
    });


    api2.api.main();
    api2.api.test().then((value) {
      print('api2.test');
      print(value);
    });
    // print(flutter_plugin_2.getBindings().demo2());

    setState(() {
      _counter = Calculator().addOne(_counter);
    });
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await _flutterPlugin_1Plugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

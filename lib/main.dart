import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _zeroCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Значение инкремента:',
            textScaleFactor: 2,
          ),
          Text(
            '$_counter',
            textScaleFactor: 1.2,
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: _decrementCounter,
              style: ElevatedButton.styleFrom(primary: Colors.white),
              child: const Text("-",
                  style: TextStyle(fontSize: 26, color: Colors.red)),
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: const Text("+",
                    style: TextStyle(fontSize: 26, color: Colors.green))),
          ]),
          ElevatedButton(
              onPressed: _zeroCounter,
              child: const Text("Сбросить", textScaleFactor: 1.5))
        ],
      )),
    );
  }
}

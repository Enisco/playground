import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _counter = 0, incPressCheck = 0, decPressCheck = 0;
  bool incCheck = true, decCheck = false;

  incrementCounter() {
    setState(() {
      incCheck == true ? _counter += 1 : _counter;
      incPressCheck++;
      decPressCheck = 0;
      decCheck = true;
      if (incPressCheck >= 3) {
        incCheck = false;
        print('incCheck: $incCheck');
      }
    });
  }

  decrementCounter() {
    setState(() {
      decCheck == true ? _counter -= 1 : _counter;
      decPressCheck++;
      incPressCheck = 0;
      incCheck = true;
      if (decPressCheck >= 3) {
        decCheck = false;
        print('decCheck: $decCheck');
      }
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 15),
            Button1(
              icondata: CupertinoIcons.plus_circle,
              buttonColor: incCheck ? Colors.teal : Colors.teal.shade200,
              onPressed: incrementCounter,
            ),
            const SizedBox(height: 15),
            Button1(
              icondata: Icons.remove,
              buttonColor: decCheck ? Colors.red : Colors.red.shade200,
              onPressed: decrementCounter,
            ),
          ],
        ),
      ),
    );
  }
}

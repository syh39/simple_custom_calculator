import 'package:flutter/material.dart';
import 'package:simple_custom_calculator/simple_custom_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Custom Calculator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Custom Calculator Demo Home Page'),
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
            ElevatedButton(
              child: const Text('Simple Circle Button Calculator'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleCircleButtonCalculator())
                  );
                }
            ),
            ElevatedButton(
                child: const Text('Simple Rectangle Button Calculator'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleRectangleButtonCalculator())
                  );
                }
            ),
            ElevatedButton(
                child: const Text('Simple Color Button Calculator'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleColorButtonCalculator())
                  );
                }
            ),
            ElevatedButton(
                child: const Text('Simple Other Calculator'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleOtherCalculator())
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleCircleButtonCalculator extends StatefulWidget {
  const SimpleCircleButtonCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCircleButtonCalculator> createState() => _SimpleCircleButtonCalculatorState();
}

class _SimpleCircleButtonCalculatorState extends State<SimpleCircleButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Circle Button Calculator'),
        ),
        body: Center(
            child: SimpleCustomCalculator(
              width: MediaQuery.of(context).size.width,
              height: 600,
              buttonIsRectangle: false,
            )));
  }
}

class SimpleRectangleButtonCalculator extends StatefulWidget {
  const SimpleRectangleButtonCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleRectangleButtonCalculator> createState() => _SimpleRectangleButtonCalculator();
}

class _SimpleRectangleButtonCalculator extends State<SimpleRectangleButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Rectangle Button Calculator'),
        ),
        body: Center(
            child: SimpleCustomCalculator(
              width: MediaQuery.of(context).size.width,
              height: 600,
              buttonIsRectangle: true,
            )));
  }
}

class SimpleColorButtonCalculator extends StatefulWidget {
  const SimpleColorButtonCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleColorButtonCalculator> createState() => _SimpleColorButtonCalculator();
}

class _SimpleColorButtonCalculator extends State<SimpleColorButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Color Button Calculator'),
        ),
        body: Center(
            child: SimpleCustomCalculator(
              width: MediaQuery.of(context).size.width,
              height: 600,
              backgroundColor: Colors.blueAccent,
              buttonColor: Colors.pinkAccent,
            )));
  }
}

class SimpleOtherCalculator extends StatefulWidget {
  const SimpleOtherCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleOtherCalculator> createState() => _SimpleOtherCalculator();
}

class _SimpleOtherCalculator extends State<SimpleOtherCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Other Calculator'),
        ),
        body: Center(
            child: SimpleCustomCalculator(
              width: MediaQuery.of(context).size.width,
              height: 600,
              buttonPadding: 10.0,
              numberSize: 75,
              buttonIsRectangle: true,
            )));
  }
}
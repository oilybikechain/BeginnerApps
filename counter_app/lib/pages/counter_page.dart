import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() =>
      _CounterPageState();
}

class _CounterPageState
    extends State<CounterPage> {
  //To build app: need
  // Variable
  int _counter = 0;

  // Method
  void _incrementCounter () {
    setState((){
      _counter++;
    });
  }

  // UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Here is the count: "),
            
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
              ),
            
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: Text("Increment"),
            )
          ],
        ),
      ),
    );
  }
}

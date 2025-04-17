import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() =>
      _ToDoPageState();
}

class _ToDoPageState
    extends State<ToDoPage> {
  //Need text editing controller to get access to what the user types
  TextEditingController myController =
      TextEditingController();

  //Method to greet user
  void greetuser() {
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
            ),

            ElevatedButton(
              onPressed: greetuser,
              child: Text("Tap Me!"),
            ),
          ],
        ),
      ),
    );
  }
}

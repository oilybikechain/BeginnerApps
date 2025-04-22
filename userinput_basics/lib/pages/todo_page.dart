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

  String greetingMessage = "";

  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 25.0,
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              //Print user input
              Text(greetingMessage),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border:
                      OutlineInputBorder(),
                  hintText: "Type your name",
                ),
              ),

              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap Me!"),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

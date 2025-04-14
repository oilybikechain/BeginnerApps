import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
  //Variables: Storing different types of information

  // Basic Math Operators

  // Comparison operators

  //Logical operators
  && AND
  OR ||
  NOT !

  //CONTROL FLOW
  if () {
  }
  else () {
  }
  else if () {
  }

  alternative to else if
  switch () {
    case value:
    
    break;
    default;
  }

  for loop

  //functions == methods
  void greet() {
    print("hello")
  }
  void = return nothing

  functions with arguments
  void greetPerson(String name) {
    print("Hello" + name);
  }

  functions with return values
  int add(int a, int b) {
    int sum = a + b
    return sum;
  }

  //DATA STRUCTURES
  List<data type> x = []
  Set: unordered collection of unique elements
  Set<String> uniqueNames = {}
  Map: Key value pairs
  Map user = {
    "name" = "Oilybikechain"
  }
  */

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}

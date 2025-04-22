import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  // run tghis method if first time opening app
  void createInitialData() {
    toDoList = [
      ["Task 1", false],
      ["Task 2", false],
    ];
  }

  //load database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

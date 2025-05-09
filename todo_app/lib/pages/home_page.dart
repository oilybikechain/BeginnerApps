import 'package:flutter/material.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/utilities/dialog_box.dart';
import 'package:todo_app/utilities/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState
    extends State<HomePage> {
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  //look at init state
  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _controller =
      TextEditingController();

  //List of todo tasks

  void checkBoxChanged(
    bool? value,
    int index,
  ) {
    setState(() {
      db.toDoList[index][1] =
          !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([
        _controller.text,
        false,
      ]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel:
              () =>
                  Navigator.of(
                    context,
                  ).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TO DO",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton:
          FloatingActionButton(
            onPressed: createNewTask,
            child: Icon(Icons.add),
          ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted:
                db.toDoList[index][1],
            onChanged:
                (value) => checkBoxChanged(
                  value,
                  index,
                ),
            deleteFunction:
                (context) =>
                    deleteTask(index),
          );
        },
      ),
    );
  }
}

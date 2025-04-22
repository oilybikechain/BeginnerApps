import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              //get user input
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // Save and cancel button
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(width: 8),

                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

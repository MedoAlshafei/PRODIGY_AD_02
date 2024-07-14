import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'try test',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked, (bool? newValue) {
        setState(() {
          isChecked = newValue!;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) checkboxChange;
  const TaskCheckbox(this.checkboxState, this.checkboxChange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color.fromARGB(255, 14, 13, 11),
      value: checkboxState,
      onChanged: checkboxChange,
    );
  }
}

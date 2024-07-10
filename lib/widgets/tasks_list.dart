import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/task_list.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(),
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}

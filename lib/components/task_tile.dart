import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checked;
  final String title;
  final Function callback;

  TaskTile({this.checked, this.title, this.callback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checked,
        onChanged: this.callback,
      ),
    );
  }
}

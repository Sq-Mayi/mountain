import 'package:flutter/material.dart';
class ToDo extends StatefulWidget {
  ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List lists = [
    {
      "label":"计算机四级考试",
      "describe":"xxx",
      "color":Colors.red
    },
    {
      "label":"托福考试",
      "describe":"xxx",
      "color":Colors.blue
    },
    {
      "label":"托福考试",
      "describe":"xxx",
      "color":Colors.yellow
    },
    {
      "label":"托福考试",
      "describe":"xxx",
      "color":Colors.green
    },
  ];

  _toDo(){
    return lists.map((e) => Container(
      child: Text(e['label']),
      color: e['color'],
      height: 60,
      margin: EdgeInsets.all(8),
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _toDo(),
    );
  }
}
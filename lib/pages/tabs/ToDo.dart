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
      // child: Text(
      //   e['label'],
      //   style: TextStyle(
      //     fontSize: 20,
      //     fontWeight: FontWeight.w500,
      //   ),
      //   ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            e['label'],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(e['describe'],
          )
        ],
      ),
      height: 80,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
      decoration: BoxDecoration(
        color: e['color'],
        borderRadius:BorderRadius.all(Radius.circular(8))
      ),
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _toDo(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AddToDo extends StatefulWidget {
  AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  @override
  var masterName = new TextEditingController();
  var childName = new TextEditingController();
  var reword = new TextEditingController();
  void initState() {
    // TODO: implement initState
    super.initState();
    masterName.text = '';
    childName.text = '';
    reword.text = '';
  }
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "主任务名"
              ),
              controller: masterName,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "子任务名"
              ),
              controller: childName
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "奖励"
              ),
              controller: reword,
            ),
            SizedBox(height: 20),
            Container(
              child: CupertinoButton(
                onPressed: (){
                  print(masterName);
                  print(childName);
                  print(reword);
                },
                child: Text(
                  '保存',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                color: Colors.yellow,
                ),
            )
          ],
        ),
      )
    );
  }
}
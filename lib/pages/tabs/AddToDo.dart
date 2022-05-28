import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AddToDo extends StatefulWidget {
  AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: (){

            }, 
            icon:Icon(Icons.save))

        ],
      ),
    );
  }
}
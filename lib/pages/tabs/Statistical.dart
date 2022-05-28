import 'package:flutter/material.dart';
class Statistical extends StatefulWidget {
  Statistical({Key? key}) : super(key: key);

  @override
  State<Statistical> createState() => _StatisticalState();
}

class _StatisticalState extends State<Statistical> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('我是统计界面'),
    );
  }
}
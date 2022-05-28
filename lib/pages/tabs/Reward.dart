import 'package:flutter/material.dart';
class Reward extends StatefulWidget {
  Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('我是奖励页面'),
    );
  }
}
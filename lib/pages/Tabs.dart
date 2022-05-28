import 'package:flutter/material.dart';
import './tabs/Reward.dart';
import './tabs/Statistical.dart';
import './tabs/ToDo.dart';
import './tabs/User.dart';
import './tabs/AddToDo.dart';
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pagesList = [ToDo() , Statistical() , AddToDo() , Reward() , User()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('mountain'),
        ),
        body: _pagesList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index)=>{
            setState(()=>{
              _currentIndex = index
            })
          },
          items: const [
            BottomNavigationBarItem(
              label: '待办',
              icon: Icon(Icons.offline_bolt)
            ),
            BottomNavigationBarItem(
              label: '统计',
              icon: Icon(Icons.fact_check)
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.add),
              backgroundColor: Colors.grey
            ),
            BottomNavigationBarItem(
              label: '奖励',
              icon: Icon(Icons.shopping_cart)
            ),
            BottomNavigationBarItem(
              label: '我的',
              icon: Icon(Icons.hiking)
            ),
          ]
          ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Container(
      child: ListView(
        
      )
    );
  }
}

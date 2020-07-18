import 'package:flutter/material.dart';
import 'package:satpro/bank.dart';
import 'package:satpro/community.dart';
import 'package:satpro/setting.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int tabIdx = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SAT"),
      ),
      body: _tabBody(tabIdx),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIdx,
        onTap: (index) => setState((){
          tabIdx = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down),
            activeIcon: Icon(Icons.arrow_drop_down, color: Colors.red,),
            title: Text("커뮤니티")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_drop_down),
              activeIcon: Icon(Icons.arrow_drop_down, color: Colors.red,),
              title: Text("문제은행"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_drop_down),
              activeIcon: Icon(Icons.arrow_drop_down, color: Colors.red,),
              title: Text("설정")
          ),
        ],
      ),
    );
  }

  Widget _tabBody(tabIdx) {
    switch(tabIdx) {
      case 0:
        return CommunityPage();
        break;
      case 1:
        return BankPage();
      case 2:
        return SettingPage();
    }
    return Container();
  }
}
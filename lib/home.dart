import 'package:flutter/material.dart';
import 'package:satpro/bank.dart';
import 'package:satpro/community.dart';
import 'package:satpro/setting.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int tabIdx = 1;
  var phoneSize;

  Widget build(BuildContext context) {
    phoneSize = MediaQuery.of(context).size;
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
            icon: Icon(Icons.room),
            activeIcon: Icon(Icons.room, color: Colors.red,),
            title: Text("커뮤니티")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home, color: Colors.red,),
              title: Text("문제은행"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings, color: Colors.red,),
              title: Text("설정")
          ),
        ],
      ),
      drawer: SizedBox(
        width: phoneSize.width * .81,
        child: Drawer(
          child: Container(
            height: double.maxFinite,
            child: ListView(
              children: <Widget>[
                Text("a"),
                Text("b"),
              ],
            ),
          ),
        ),
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
        break;
      case 2:
        return SettingPage();
        break;
    }
    return Container();
  }
}
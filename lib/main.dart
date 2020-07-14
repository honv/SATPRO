import 'package:flutter/material.dart';
import 'package:satpro/login.dart';
import 'package:satpro/register.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ListView(

          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            SizedBox(height: phoneSize.height * .4),
            Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'S',
                            style: TextStyle(
                                fontSize: 70,
                                color: Colors.brown)),
                        TextSpan(
                            text: 'A',
                            style: TextStyle(
                                fontSize: 70,
                                color: Colors.grey)),
                        TextSpan(
                            text: 'T',
                            style: TextStyle(
                                fontSize: 70,
                                color: Colors.black))
                      ]),
                ),
              ],
            ),
            SizedBox(height: phoneSize.height * .1),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      phoneSize.width * 0.17)
              ),
              child: FlatButton(
                child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                onPressed: () =>
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage())),
              ),
            ),
            SizedBox(height: phoneSize.height * .04),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      phoneSize.width * 0.17)
              ),
              alignment: Alignment.center,
              child: FlatButton(
                child: Text("Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                onPressed: () =>
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage())),
              ),
            ),
          ],
        )
      ),
    );
  }
}
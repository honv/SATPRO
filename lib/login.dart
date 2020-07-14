import 'package:flutter/material.dart';
import 'package:satpro/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage();
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  _LoginState();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String id;
  String password;

  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: phoneSize.height * 0.03),
            TextField(
              autofocus: true,
              autocorrect: false,
              controller: _idController,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.black, fontSize: 16.0),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.red,
                hintText: "아이디를 입력해주세요",
                hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 16.0),),
            ),
            TextField(
              autofocus: true,
              autocorrect: false,
              obscureText: true,
              controller: _passwordController,
              maxLines: 1,
              style: TextStyle(
                  color: Colors.black, fontSize: 16.0),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.red,
                hintText: "비밀번호를 입력해주세요",
                hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 16.0),),
            ),
            SizedBox(height: phoneSize.height * 0.05),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      phoneSize.width * 0.17)
              ),
              child: FlatButton(
                child: Text("로그인",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25),),
                onPressed: () async {
                  _handleSubmitted();
                  await Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()));
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted() {
    setState(() {
      id = _idController.text;
      password = _passwordController.text;
    });
    _idController.clear();
    _passwordController.clear();
  }
}
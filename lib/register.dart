import 'package:flutter/material.dart';
import 'package:satpro/home.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage();
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  _RegisterState();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String id;
  String password;

  List idList = ["younhong", "smile"];
  List pwList = ["you", "hi"];

  Widget build(BuildContext context) {
    var phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
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
            GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(
                          phoneSize.width * 0.17)
                  ),
                  child: Text("회원가입",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25),),
                ),
                onTap: () async {
                  _handleSubmitted();
                  if (idList.contains(id) && pwList.contains(password) &&
                      idList.indexOf(id) == pwList.indexOf(password)) {
                    await Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()));
                  }
                }
            )
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
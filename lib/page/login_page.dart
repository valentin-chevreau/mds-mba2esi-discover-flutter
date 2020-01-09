import 'package:flutter/material.dart';
import 'package:hello_world_flutter/widget/login_button_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  color: Colors.blue.withOpacity(0.6),
                  size: 64.0,
                ),
              ],
            ),
            Container(height: 16.0),
            TextField(
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Username',
                focusedBorder: _textFieldBorder(isFocused: true),
                enabledBorder: _textFieldBorder(),
              ),
            ),
            Container(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Password',
                focusedBorder: _textFieldBorder(isFocused: true),
                enabledBorder: _textFieldBorder(),
              ),
            ),
            Container(height: 32.0),
            LoginButtonWidget(Colors.deepPurple)
          ],
        ),
      ),
    );
  }

  _textFieldBorder({bool isFocused = false}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: isFocused ? Colors.lightBlue : Colors.blue, width: 1.0),
    );
  }
}

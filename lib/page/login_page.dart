import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/user_model.dart';
import 'package:hello_world_flutter/page/menu_page.dart';
import 'package:hello_world_flutter/widget/generic_button_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//  Color _loginButtonColor = Colors.deepPurple;

  bool _isLoading = false;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String errorInfo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: _bodyDependingOnLoading(),
    );
  }

  Widget _bodyDependingOnLoading() {
    if (_isLoading) {
      return _progressIndicator();
    } else {
      return _contentLoginForm();
    }
  }

  Widget _progressIndicator() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _contentLoginForm() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(height: 32.0),
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
              controller: _usernameController,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Username',
                focusedBorder: _textFieldBorder(isFocused: true),
                enabledBorder: _textFieldBorder(),
              ),
            ),
            Container(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                labelText: 'Password',
                focusedBorder: _textFieldBorder(isFocused: true),
                enabledBorder: _textFieldBorder(),
              ),
            ),
            _showErrorIfNeeded(),
            Container(height: 32.0),
            GenericButtonWidget('Login', _loginPressed),
            Container(height: 16.0),
            GenericButtonWidget('Register', _registerPressed),
//            GestureDetector(
//              onTapDown: (detail) {
//                setState(() {
//                  _loginButtonColor = Colors.red;
//                });
//              },
//              onTapCancel: () {
//                setState(() {
//                  _loginButtonColor = Colors.deepPurple;
//                });
//              },
//              onTapUp: (detail) {
//                setState(() {
//                  _loginButtonColor = Colors.deepPurple;
//                });
//              },
//              child: StaticLoginButtonWidget(_loginButtonColor),
//            )
          ],
        ),
      ),
    );
  }

  Widget _showErrorIfNeeded() {
    if (errorInfo.length > 0) {
      return Container(
        height: 48.0,
        child: Center(
          child: Text(
            errorInfo,
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    } else {
      return Container(
        height: 48.0,
      );
    }
  }

  _loginPressed() async {
    print('login pressed');
    setState(() {
      errorInfo = '';
      _isLoading = true;
    });

//    Future.delayed(Duration(seconds: 1), () {
//      setState(() {
//        _isLoading = false;
//      });
//    });

    await Future.delayed(Duration(seconds: 1));

    String username = _usernameController.text;
    String password = _passwordController.text;

    print('|$username|');
    print('|$password|');

    if (username == 'admin' && password == 'admin') {
      User user = User(username, password);
      String encodedJSON = jsonEncode(user.toJson());

      print(encodedJSON);

      //save to sharedpreferences (its a file inside the app)
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user', encodedJSON);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MenuPageWidget()));
    } else {
      setState(() {
        errorInfo = 'Incorrect credentials';
        _isLoading = false;
      });
    }
  }

  _registerPressed() {
    print('register pressed');
    setState(() {
      _isLoading = true;
    });
  }

  _textFieldBorder({bool isFocused = false}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: isFocused ? Colors.lightBlue : Colors.blue, width: 1.0),
    );
  }
}

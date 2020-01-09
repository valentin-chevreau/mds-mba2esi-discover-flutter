import 'package:flutter/material.dart';
import 'package:hello_world_flutter/widget/generic_button_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//  Color _loginButtonColor = Colors.deepPurple;

  bool _isLoading = false;

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
            GenericButtonWidget('Login', () {
              print('login pressed');
              setState(() {
                _isLoading = true;
              });

              Future.delayed(Duration(seconds: 1), () {
                setState(() {
                  _isLoading = false;
                });
              });
            }),
            Container(height: 16.0),
            GenericButtonWidget('Register', () {
              print('register pressed');
              setState(() {
                _isLoading = true;
              });

              Future.delayed(Duration(seconds: 1), () {
                setState(() {
                  _isLoading = false;
                });
              });
            }),
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

  _textFieldBorder({bool isFocused = false}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color: isFocused ? Colors.lightBlue : Colors.blue, width: 1.0),
    );
  }
}

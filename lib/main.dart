import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
//      home: MenuPageWidget(),
    );
  }
}

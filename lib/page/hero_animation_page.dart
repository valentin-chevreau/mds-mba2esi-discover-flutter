import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  @override
  _HeroAnimationPageState createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            SizedBox(
                height: 48.0,
                width: 48.0,
                child: Hero(
                    tag: 'image',
                    child:
                        Image.asset('assets/banner.png', fit: BoxFit.cover))),
            Container(width: 18.0),
            Text('Hero animation'),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}

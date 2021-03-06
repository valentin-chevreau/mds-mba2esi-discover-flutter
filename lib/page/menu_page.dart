import 'package:flutter/material.dart';
import 'package:hello_world_flutter/page/exercice_1a_prototyping.dart';
import 'package:hello_world_flutter/page/flutter_exercise_1b.dart';
import 'package:hello_world_flutter/page/hero_animation_page.dart';
import 'package:hello_world_flutter/page/image_gallery_page.dart';
import 'package:hello_world_flutter/page/login_page.dart';
import 'package:hello_world_flutter/page/long_list_page.dart';
import 'package:hello_world_flutter/page/network_image_page.dart';
import 'package:hello_world_flutter/page/object_list_page.dart';
import 'package:hello_world_flutter/page/pokemon_list_page.dart';
import 'package:hello_world_flutter/page/random_cat_rest_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPageWidget extends StatefulWidget {
  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo App'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('user');

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Spacer(),
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: 'image',
                    child: Image.asset('assets/banner.png', fit: BoxFit.cover),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.branding_watermark,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Pokemon List',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToPokemonList();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.branding_watermark,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Random Cat',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToRandomCat();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.branding_watermark,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Hero Animation',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToHeroAnimationPage();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.playlist_add,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Object List',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToObjectListPage();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.format_list_bulleted,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Long List',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToLongListPage();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.list,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Image Gallery',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToGalleryPage();
                        },
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.cast_connected,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'NetWork Image',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToNetworkPage();
                        },
                      ),
                      RaisedButton(
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.featured_play_list,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Exercice 1a Prototyping',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToExercice1aPrototyping();
                        },
                      ),
                      RaisedButton(
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.business,
                              color: Colors.white,
                            ),
                            Container(width: 12.0),
                            Text(
                              'Exercise 1b Calculator',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onPressed: () {
                          _goToExercice1bCalculator();
                        },
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  _goToHeroAnimationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HeroAnimationPage();
    }));
  }

  _goToObjectListPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ObjectListPage();
    }));
  }

  _goToLongListPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LongListPage();
    }));
  }

  _goToNetworkPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NetWorkImagePage();
    }));
  }

  _goToGalleryPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageGallery();
    }));
  }

  _goToExercice1aPrototyping() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Exercice1aPrototyping();
    }));
  }

  _goToExercice1bCalculator() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FlutterExcercise1b();
    }));
  }

  _goToRandomCat() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RandomCatPage();
    }));
  }

  _goToPokemonList() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PokemonListPage();
    }));
  }
}

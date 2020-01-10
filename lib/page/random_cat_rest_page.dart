import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/cat_model.dart';
import 'package:hello_world_flutter/rest/cat_api.dart';

class RandomCatPage extends StatefulWidget {
  @override
  _RandomCatPageState createState() => _RandomCatPageState();
}

class _RandomCatPageState extends State<RandomCatPage> {
  Cat _currentCat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random cat'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _refreshPressed,
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          _currentCat == null
              ? Container()
              : Expanded(
                  child: CachedNetworkImage(
                    imageUrl: _currentCat.imageURL,
                    placeholder: (context, url) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            height: 48.0,
                            width: 48.0,
                            child: CircularProgressIndicator()),
                      ],
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
          Spacer(),
          Row(
            children: <Widget>[
              _currentCat == null
                  ? Container()
                  : Expanded(
                      child: Text(
                      _currentCat.imageURL,
                      style: TextStyle(fontSize: 18.0),
                    ))
            ],
          ),
        ],
      ),
    );
  }

  _refreshPressed() async {
    print('refreshPressed');

//    CatAPI.getRandomCat().then(() {
//  });
// OR

    Cat cat = await CatAPI.getRandomCat();

    setState(() {
      _currentCat = cat;
    });
  }
}

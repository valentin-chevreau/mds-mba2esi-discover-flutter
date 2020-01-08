import 'package:flutter/material.dart';
import 'package:hello_world_flutter/model/pony_model.dart';

class ObjectListPage extends StatefulWidget {
  @override
  _ObjectListPageState createState() => _ObjectListPageState();
}

class _ObjectListPageState extends State<ObjectListPage> {
  final listAnimatedKey = GlobalKey<AnimatedListState>();

  List<Pony> ponies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('initState');

    ponies.addAll(
      [
        Pony('Rob', Colors.green, 1000),
        Pony('Job', Colors.grey, 1000),
        Pony('Bob', Colors.brown, 150),
        Pony('Valentin', Colors.red, 22),
      ],
    );

    print(ponies.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Pony List'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                ponies.insert(0, Pony('Default pony', Colors.brown, 10));
                listAnimatedKey.currentState
                    .insertItem(0, duration: Duration(seconds: 5));
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: AnimatedList(
        key: listAnimatedKey,
        initialItemCount: ponies.length,
        itemBuilder: (context, index, animation) {
          Pony p = ponies[index];
          return SlideTransition(
            position: animation.drive(
                Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
                    .chain(CurveTween(curve: Curves.easeInCirc))),
            child: _buildPony(p),
          );
        },
      ),
    );
  }

  Widget _buildPony(Pony pony) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Row(
        children: <Widget>[
          Text(pony.name,
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold)),
          Spacer(),
          Text(pony.age.toString() + ' yrs old'),
          Spacer(),
          ClipOval(
            child: Container(
              color: pony.color,
              height: 24.0,
              width: 24.0,
            ),
          )
        ],
      ),
    );
  }
}

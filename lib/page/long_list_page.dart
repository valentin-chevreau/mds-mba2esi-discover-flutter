import 'package:flutter/material.dart';

class LongListPage extends StatefulWidget {
  @override
  _LongListPageState createState() => _LongListPageState();
}

class _LongListPageState extends State<LongListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List Page'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return _buildItem(index);
          }),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print('tap item at item $index');
        },
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 48.0,
              width: 48.0,
              child: ClipOval(
                child: Container(
                  color: Colors.indigoAccent.withOpacity(0.2),
                  child: Image.asset('assets/banner.png'),
                ),
              ),
            ),
            Container(width: 12.0),
            Expanded(
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
            )
          ],
        ),
      ),
    );
  }
}

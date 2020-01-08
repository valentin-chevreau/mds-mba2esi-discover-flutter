import 'package:flutter/material.dart';

class FlutterExcercise1b extends StatefulWidget {
  @override
  _FlutterExcercise1bState createState() => _FlutterExcercise1bState();
}

class _FlutterExcercise1bState extends State<FlutterExcercise1b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: <Widget>[
                      Text(
                        '0',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 100.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('AC');
                    },
                    child: Text(
                      "AC",
                      style: TextStyle(color: Colors.black, fontSize: 35.0),
                    ),
                    fillColor: Colors.grey,
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('±');
                    },
                    child: Text(
                      "±",
                      style: TextStyle(color: Colors.black, fontSize: 35.0),
                    ),
                    fillColor: Colors.grey,
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('%');
                    },
                    child: Text(
                      "%",
                      style: TextStyle(color: Colors.black, fontSize: 35.0),
                    ),
                    fillColor: Colors.grey,
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('÷');
                    },
                    child: Text(
                      "÷",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Colors.orange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('7');
                    },
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('8');
                    },
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('9');
                    },
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('×');
                    },
                    child: Text(
                      "×",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Colors.orange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('4');
                    },
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('5');
                    },
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('6');
                    },
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('–');
                    },
                    child: Text(
                      "–",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Colors.orange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('1');
                    },
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('2');
                    },
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('3');
                    },
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('+');
                    },
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Colors.orange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 65.0,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color.fromRGBO(56, 54, 56, 1.0)),
                    child: MaterialButton(
                      onPressed: () {
                        _buttonAction('0');
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "0",
                          style: TextStyle(color: Colors.white, fontSize: 35.0),
                        ),
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction(',');
                    },
                    child: Text(
                      ",",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Color.fromRGBO(56, 54, 56, 1.0),
                  ),
                  RawMaterialButton(
                    shape: const CircleBorder(),
                    constraints: BoxConstraints.tight(Size(70.0, 70.0)),
                    onPressed: () {
                      _buttonAction('=');
                    },
                    child: Text(
                      "=",
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                    fillColor: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buttonAction(text) {
    print(text);
  }
}

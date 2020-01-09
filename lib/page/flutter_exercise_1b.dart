import 'package:flutter/material.dart';
import 'package:hello_world_flutter/widget/calculator_button_widget.dart';

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
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: <Widget>[
                      Text('0',
                          style:
                              TextStyle(color: Colors.white, fontSize: 100.0)),
                    ],
                  ),
                )),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: CalculatorButtonWidget('AC', Colors.grey)),
                      Expanded(
                          flex: 1,
                          child: CalculatorButtonWidget('±', Colors.grey)),
                      Expanded(
                          flex: 1,
                          child: CalculatorButtonWidget('%', Colors.grey)),
                      Expanded(
                          flex: 1,
                          child: CalculatorButtonWidget('÷', Colors.orange)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget('7', Colors.white12),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget('8', Colors.white12),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget('9', Colors.white12),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget('×', Colors.orange),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '4',
                          Colors.white12,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '5',
                          Colors.white12,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '6',
                          Colors.white10,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '–',
                          Colors.orange,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '1',
                          Colors.white12,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '2',
                          Colors.white12,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '3',
                          Colors.white12,
                        )),
                    Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '+',
                          Colors.orange,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: CalculatorButtonWidget(
                        '0',
                        Colors.white12,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CalculatorButtonWidget(
                        ',',
                        Colors.white12,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CalculatorButtonWidget(
                        '=',
                        Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

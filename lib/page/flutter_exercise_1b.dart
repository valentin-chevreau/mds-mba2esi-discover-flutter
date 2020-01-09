import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter/widget/calculator_button_widget.dart';

class FlutterExcercise1b extends StatefulWidget {
  @override
  _FlutterExcercise1bState createState() => _FlutterExcercise1bState();
}

class _FlutterExcercise1bState extends State<FlutterExcercise1b> {
  TextStyle _whiteTextStyle = TextStyle(color: Colors.white, fontSize: 100.0);
  var operand1;
  var operand2;
  String operator;
  bool isOperand1Completed;
  var result;

  @override
  void initState() {
    super.initState();
    initialiseValues();
  }

  initialiseValues() {
    operand1 = null;
    operand2 = null;
    result = null;
    operator = null;
    isOperand1Completed = false;
  }

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
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      operand1 != null
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                operand1 is double
                                    ? operand1.toStringAsFixed(2)
                                    : operand1.toString(),
                                style: _whiteTextStyle,
                                textAlign: TextAlign.right,
                              ),
                            )
                          : Container(),
                      operator != null
                          ? Text(
                              operator.toString(),
                              style: _whiteTextStyle,
                              textAlign: TextAlign.right,
                            )
                          : Container(),
                      operand2 != null
                          ? Text(
                              operand2.toString(),
                              style: _whiteTextStyle,
                              textAlign: TextAlign.right,
                            )
                          : Container(),
                      result != null
                          ? Divider(
                              height: 5.0,
                              color: Colors.white,
                            )
                          : Container(),
                      result != null
                          ? Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    result is double
                                        ? result.toStringAsFixed(2)
                                        : result.toString(),
                                    style: _whiteTextStyle,
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      // Text(
                      //  '0',
                      //  style: TextStyle(color: Colors.white, fontSize: 100.0),
                      //),
                    ],
                  ),
                )),
              ),
              Container(
                height: 32.0,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          'AC',
                          Colors.grey,
                          onPressed: () {
                            _buttonAction('AC');
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '±',
                          Colors.grey,
                          onPressed: () {
                            _buttonAction('±');
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '%',
                          Colors.grey,
                          onPressed: () {
                            _buttonAction('%');
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CalculatorButtonWidget(
                          '÷',
                          Colors.orange,
                          onPressed: () {
                            _buttonAction('÷');
                          },
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '7',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('7');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '8',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('8');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '9',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('9');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '×',
                        Colors.orange,
                        onPressed: () {
                          _buttonAction('×');
                        },
                      ),
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
                        onPressed: () {
                          _numberButtonAction('4');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '5',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('5');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '6',
                        Colors.white10,
                        onPressed: () {
                          _buttonPressed('6');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '–',
                        Colors.orange,
                        onPressed: () {
                          _buttonAction('–');
                        },
                      ),
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
                        '1',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('1');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '2',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('2');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '3',
                        Colors.white12,
                        onPressed: () {
                          _numberButtonAction('3');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CalculatorButtonWidget(
                        '+',
                        Colors.orange,
                        onPressed: () {
                          _buttonAction('+');
                        },
                      ),
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
                      flex: 4,
                      child: CalculatorButtonWidget(
                        '0',
                        Colors.white12,
                        onPressed: () {
                          _zeroButtonAction();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CalculatorButtonWidget(
                        ',',
                        Colors.white12,
                        onPressed: () {
                          _buttonAction(',');
                        },
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CalculatorButtonWidget(
                        '=',
                        Colors.orange,
                        onPressed: () {
                          _buttonAction('=');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _buttonPressed(text) {
    print(text);
  }

  _buttonAction(action) {
    switch (action) {
      case "+":
        if (operand2 != null) {
          if (result == null) _findOutput();
          operand1 = result;
          operand2 = null;
          result = null;
        }
        operator = "+";
        isOperand1Completed = true;
        break;
      case "-":
        if (operand2 != null) {
          if (result == null) _findOutput();
          operand1 = result;
          operand2 = null;
          result = null;
        }
        operator = "-";
        isOperand1Completed = true;
        break;
      case "\u00D7":
        if (operand2 != null) {
          if (result == null) _findOutput();
          operand1 = result;
          operand2 = null;
          result = null;
        }
        operator = "\u00D7";
        isOperand1Completed = true;
        break;
      case "\u00F7":
        if (operand2 != null) {
          if (result == null) _findOutput();
          operand1 = result;
          operand2 = null;
          result = null;
        }
        operator = "\u00F7";
        isOperand1Completed = true;
        break;
      case "+/-":
        if (result != null)
          result = -result;
        else if (isOperand1Completed) {
          if (operand2 != null) {
            operand2 = (-int.parse(operand2)).toString();
          }
        } else {
          if (operand1 != null) {
            operand1 = (-int.parse(operand1)).toString();
          }
        }
        break;
      case "%":
        if (result != null)
          result = result / 100;
        else if (isOperand1Completed) {
          if (operand2 != null) {
            operand2 = (double.parse(operand2) / 100).toString();
          }
        } else {
          if (operand1 != null) {
            operand1 = (double.parse(operand1) / 100).toString();
          }
        }
        break;
      case "AC":
        initialiseValues();
        break;
      case "=":
        if (result == null) _findOutput();
        break;
      case ".":
        if (result != null) initialiseValues();
        if (isOperand1Completed) {
          if (!operand2.toString().contains(".")) {
            if (operand2 == null) {
              operand2 = ".";
            } else {
              operand2 += ".";
            }
          }
        } else {
          if (!operand1.toString().contains(".")) {
            if (operand1 == null) {
              operand1 = ".";
            } else {
              operand1 += ".";
            }
          }
        }
        break;
    }
    setState(() {});
    print(operator);
  }

  _findOutput() {
    if (operand1 == null || operand2 == null) return;
    var exp1 = double.parse(operand1.toString());
    var exp2 = double.parse(operand2.toString());
    switch (operator) {
      case "+":
        result = exp1 + exp2;
        break;
      case "-":
        result = exp1 - exp2;
        break;
      case "\u00D7":
        result = exp1 * exp2;
        break;
      case "\u00F7":
        result = exp1 / exp2;
        break;
      case "%":
        result = exp1 % exp2;
        break;
    }
    if (result.toString().endsWith(".0")) {
      result = int.parse(result.toString().replaceAll(".0", ""));
    }
  }

  _zeroButtonAction() {
    if (result != null) initialiseValues();
    if (isOperand1Completed) {
      if (operand2 == null || operand1 == "0")
        operand2 = "0";
      else {
        if (operand2.toString().length < 9) operand2 += "0";
      }
    } else {
      if (operand1 == null || operand1 == "0") {
        operand1 = "0";
      } else {
        if (operand1.toString().length < 9) operand1 += "0";
      }
    }
    setState(() {});
  }

  _numberButtonAction(String text) {
    if (result != null) initialiseValues();
    if (isOperand1Completed) {
      if (operand2 == null) {
        operand2 = text;
      } else {
        if (operand2.toString().length < 9) operand2 += text;
      }
    } else {
      if (operand1 == null) {
        operand1 = text;
      } else {
        if (operand1.toString().length < 9) operand1 += text;
      }
    }
    setState(() {});
  }
}

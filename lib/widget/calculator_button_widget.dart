import 'package:flutter/material.dart';

class CalculatorButtonWidget extends StatefulWidget {
  final String title;
  final Color color;
  final Function onPressed;

  CalculatorButtonWidget(this.title, this.color, {this.onPressed});

  @override
  _CalculatorButtonWidgetState createState() => _CalculatorButtonWidgetState();
}

class _CalculatorButtonWidgetState extends State<CalculatorButtonWidget> {
  Color _color;

  Size _size;

  @override
  void initState() {
    super.initState();
    _color = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (detail) {},
      onTapCancel: () {
        setState(() {
          _color = widget.color;
        });
      },
      onTapUp: (detail) {},
      child: Row(
        children: <Widget>[
          RawMaterialButton(
            shape: const CircleBorder(),
            constraints: BoxConstraints.tight(Size(70.0, 70.0)),
            onPressed: () {
              widget.onPressed();
            },
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 35.0),
            ),
            fillColor: widget.color,
          ),
        ],
      ),
    );
  }
}

/*
class CalculatorButtonWidgetSpecific extends StatefulWidget {
  final String title;
  final Color color;

  CalculatorButtonWidgetSpecific(this.title, this.color);

  @override
  _CalculatorButtonWidgetSpecificState createState() =>
      _CalculatorButtonWidgetSpecificState();
}

class _CalculatorButtonWidgetSpecificState
    extends State<CalculatorButtonWidgetSpecific> {
  Color _color;

  Size _size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (detail) {
        setState(() {
          _color = widget.color;
        });
      },
      onTapCancel: () {
        setState(() {
          _color = Colors.blue;
        });
      },
      onTapUp: (detail) {
        // widget.buttonPressed();
        setState(() {
          _color = Colors.blue;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 65.0,
            width: MediaQuery.of(context).size.width / 2.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: widget.color),
            child: MaterialButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: TextStyle(color: Colors.white, fontSize: 35.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/

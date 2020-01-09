import 'package:flutter/material.dart';

class GenericButtonWidget extends StatefulWidget {
  final String title;

  GenericButtonWidget(this.title);

  @override
  _GenericButtonWidgetState createState() => _GenericButtonWidgetState();
}

class _GenericButtonWidgetState extends State<GenericButtonWidget> {
  Color _color;

  @override
  void initState() {
    super.initState();
    _color = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (detail) {
        setState(() {
          _color = Colors.red;
        });
      },
      onTapCancel: () {
        setState(() {
          _color = Colors.blue;
        });
      },
      onTapUp: (detail) {
        setState(() {
          _color = Colors.blue;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

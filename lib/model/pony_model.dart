import 'package:flutter/material.dart';

class Pony {
  String name;
  Color color;
  int age;

  Pony(this.name, this.color, this.age);

  @override
  String toString() {
    return 'Pony{name: $name, color: $color, age: $age}';
  }
}

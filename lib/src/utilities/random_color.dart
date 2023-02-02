import 'dart:math';

import 'package:flutter/material.dart';

/// random color class
class RandomColor {
  /// get random color method
  Color getColor() {
    const int hexLength = 6;
    final color = StringBuffer();
    final array = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "0",
      "a",
      "b",
      "c",
      "d",
      "e",
      "f",
    ];

    while (color.length != hexLength) {
      color.write(array[Random().nextInt(array.length)]);
    }

    return Color(int.parse("0xff${color.toString().trim()}"));
  }
}

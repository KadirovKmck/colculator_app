import 'package:flutter/material.dart';

getBgColor(String text) {
  if (text == "AC") {
    return Colors.redAccent;
  }
  if (text == "=") {
    return Color.fromARGB(255, 104, 204, 159);
  }
  return Colors.white;
}

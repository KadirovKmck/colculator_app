import 'package:flutter/material.dart';

cGetColor(String text) {
  if (text == "/" ||
      text == "*" ||
      text == "+" ||
      text == "-" ||
      text == "C" ||
      text == "(" ||
      text == ")") {
    return Colors.redAccent;
  }
  if (text == "= " || text == "AC") {
    return Colors.white;
  }
  return Colors.indigo;
}

import 'package:flutter/material.dart';

String result = '0';

String userInput = '';
Widget resultWidget() {
  return Container(
    color: Colors.white,
    child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        child: Text(
          userInput,
          style: TextStyle(fontSize: 32),
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        child: Text(
          result,
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ),
    ]),
  );
}

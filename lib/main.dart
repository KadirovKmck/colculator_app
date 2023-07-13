import 'package:colculator_app/features/colculater_App/presentation/pages/colculeter_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ColculaterApp());
}

class ColculaterApp extends StatelessWidget {
  const ColculaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColculeterPage(),
    );
  }
}

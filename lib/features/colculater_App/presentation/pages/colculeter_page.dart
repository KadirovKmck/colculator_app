import 'package:colculator_app/features/colculater_App/data/constants/get_bg_color.dart';
import 'package:colculator_app/features/colculater_App/data/constants/get_color.dart';
import 'package:colculator_app/features/colculater_App/presentation/widgets/result_widget.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ColculeterPage extends StatefulWidget {
  const ColculeterPage({Key? key}) : super(key: key);

  @override
  _ColculeterPageState createState() => _ColculeterPageState();
}

class _ColculeterPageState extends State<ColculeterPage> {
  // String userInput = '';
  // String result = '0';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF1d2630),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: resultWidget(),
          ),
          Divider(
            color: Colors.white,
          ),
          Expanded(child: buttonWidget()),
        ],
      ),
    ));
  }

  List<String> buttonList = [
    'AC',
    '(',
    ')',
    '*',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'C',
    '0',
    '.',
    '=',
  ];
  Widget buttonWidget() {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.black,
      child: GridView.builder(
        itemCount: buttonList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return button(
            buttonList[index],
          );
        },
      ),
    );
  }

  Widget button(String text) {
    return InkWell(
      onTap: () {
        setState(() {
          handleButtomPress(text);
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: getBgColor(text),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 1,
              )
            ]),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30,
                color: cGetColor(text),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  handleButtomPress(String text) {
    if (text == 'AC') {
      userInput = '';
      result = '0';
      return;
    }
    if (text == 'C') {
      if (userInput.length > 0) {
        userInput = userInput.substring(0, userInput.length - 1);
        return;
      } else {
        return null;
      }
    }
    if (text == '=') {
      result = colculate();
      userInput = result;
      if (userInput.endsWith('.0')) {
        userInput = userInput.replaceAll('.0', '');
      }
      if (result.endsWith('.0')) {
        result = result.replaceAll('.0', '');
      }
      return;
    }
    userInput = userInput + text;
  }

  String colculate() {
    try {
      var exp = Parser().parse(userInput);
      var eveluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return eveluation.toString();
    } catch (e) {
      return "Error";
    }
  }
}

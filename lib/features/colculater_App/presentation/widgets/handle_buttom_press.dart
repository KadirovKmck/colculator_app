import 'package:colculator_app/features/colculater_App/presentation/widgets/result_widget.dart';
import 'package:math_expressions/math_expressions.dart';

// handleButtomPress(String text) {
//   if (text == 'AC') {
//     userInput = '';
//     result = '0';
//     return;
//   }
//   if (text == 'C') {
//     if (userInput.length > 0) {
//       userInput = userInput.substring(0, userInput.length - 1);
//       return;
//     } else {
//       return null;
//     }
//   }
//   if (text == '=') {
//     result == colculate();
//     userInput = result;
//     if (userInput.endsWith('.0')) {
//       userInput = userInput.replaceAll('.0', '');
//     }
//     if (result.endsWith('.0')) {
//       result = result.replaceAll('.0', '');
//     }
//     return;
//   }
//   userInput = userInput + text;
// }

// String colculate() {
//   try {
//     var exp = Parser().parse(userInput);
//     var eveluation = exp.evaluate(EvaluationType.REAL, ContextModel());
//     return eveluation.toString();
//   } catch (e) {
//     return "Error";
//   }
// }

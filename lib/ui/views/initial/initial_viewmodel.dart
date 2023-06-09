import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:math_expressions/math_expressions.dart';

import 'package:stacked/stacked.dart';

class InitialViewModel extends BaseViewModel {
  double containerSize = 50;

  double result = 0.0;
  String formattedResult = '0';

  String formatWithCommas(double value) {
    final formatter = NumberFormat('#,##0', 'en_US');
    return formatter.format(value);
  }

  String formatWithOutCommas(String value) {
    return value.replaceAll(',', '');
  }

  var expression = '';
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  TextEditingController controller = TextEditingController();
  TextEditingController userOutput = TextEditingController();

  onTap(string) {
    controller.text += string;
  }

  /// Equal Button Pressed Func
  equalPressed() {
    notifyListeners();

    String userInput = formatWithOutCommas(controller.text);
    userInput = userInput.replaceAll("x", "*");

    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel ctx = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, ctx);

    //// if (eval.toString().endsWith(".0")) {
    ////   formattedResult = formatWithCommas(eval);
    ////   userOutput.text = eval.toStringAsFixed(0);
    //// } else {
    ////   userOutput.text = eval.toString();
    //// }
    formattedResult = formatWithCommas(eval);
    userOutput.text = formattedResult;

    notifyListeners();
  }

  /// Clear Button Pressed Func
  clearInputAndOutput() {
    controller.text = "";
    userOutput.text = "0";
    notifyListeners();
  }

  // Delet Button Pressed Func
  deleteBtnAction() {
    if (controller.text.isNotEmpty) {
      controller.text =
          controller.text.substring(0, controller.text.length - 1);
    }
    if (userOutput.text.isNotEmpty) {
      userOutput.text =
          userOutput.text.substring(0, userOutput.text.length - 1);
    }

    notifyListeners();
  }

  // on Number Button Tapped
  onBtnTapped(String buttons) {
    controller.text += buttons;
    equalPressed();
    notifyListeners();
  }

  outputValue() {
    controller.text = userOutput.text;
    userOutput.text = '';
  }
}

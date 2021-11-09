import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcStateManager extends ChangeNotifier {
  String _expression = "0";
  String _history = "";

  String get expression => _expression;
  String get history => _history;

  void addCharacter(String char) {
    _expression = _expression == "0" ? char : _expression + char;
    notifyListeners();
  }

  void allClear(String char) {
    _expression = "";
    notifyListeners();
  }

  void calc(String char) {
    try {
      Parser p = Parser();
      Expression exp = p.parse(_expression);
      ContextModel cm = ContextModel();
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
      notifyListeners();
    } catch (e) {
      _history = "invalid e xpression";
      _expression = "0";
    }
    notifyListeners();
  }
}

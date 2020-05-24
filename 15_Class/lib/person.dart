import 'dart:math';
class Person {
  double _height;
  double _weight;
  final String _gender;

  double get height => _height;
  set height(double value) => _height = value;

  double get weight => _weight;
  set weight(double value) => _weight = value;

  String get gender => _gender;

  static double BmiFormula(double weight, double height) {
    double _height_M = height / 100;
    double bmi = weight / pow(_height_M, 2);
    return bmi;
  }

  // using final variable with constructor and synctatic sugar.
  Person(String this._gender, {double height, double weight}) {
    _height = height;
    _weight = weight;
  }
  String SayHi() {
    return 'สวัสดี';
  }

  double TellBmi() {
    return BmiFormula(_weight, _height);
  }
}

import 'dart:math';

void main(List<String> args) {
  double height_cm, height, weight;
  height_cm = 168;
  height = height_cm / 100;
  weight = 74.5;

  double bmi = weight / pow(height, 2);
  print("BMI " + bmi.toStringAsFixed(2));
}


double BMI(final double height_cm, final double weight) {
  double height;
  height = height_cm / 100;
  double bmi = weight / pow(height, 2);
  print("BMI " + bmi.toStringAsFixed(2));
}

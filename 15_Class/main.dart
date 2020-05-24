import 'package:mylib/person.dart';


void main(List<String> args) {
  Person boy = new Person('b', height: 50, weight: 20);
  print('SayHi:${boy.SayHi()}');
  print('BMI: ${boy.TellBmi().toStringAsFixed(2)}');

  // boy.height =40;
  // boy.weight =  15;

// cascade notaion same above synctax
  boy..height=40
  ..weight=15;
  
  print('SayHi:${boy.SayHi()}');
  print('BMI: ${boy.TellBmi().toStringAsFixed(2)}');

  // Use Static Function
  print('Static Method BMI: ${Person.BmiFormula(50, 160).toStringAsFixed(2)}');

}

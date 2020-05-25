import 'package:mylib/person.dart';

class elder implements Person{
  @override
  double height;

  @override
  double weight;

  @override
  String SayHi() {
    // TODO: implement SayHi
    throw UnimplementedError();
  }

  @override
  double TellBmi() {
    // TODO: implement TellBmi
    throw UnimplementedError();
  }

  @override
  void TellMyGender() {
    // TODO: implement TellMyGender
  }

  @override
  // TODO: implement gender
  String get gender => throw UnimplementedError();
  
}
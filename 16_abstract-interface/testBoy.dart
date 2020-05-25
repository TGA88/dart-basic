import 'package:mylib/person.dart';
import 'package:mylib/boy.dart';

void main(List<String> args) {
  Boy boy = new Boy(h: 50, w: 20);
  Person person = boy;

  person.SayHi();
  person.TellMyGender();
}

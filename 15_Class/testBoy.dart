import 'package:mylib/boy.dart';
import 'package:mylib/person.dart';

void main(List<String> args) {
  Boy boy = new Boy(h: 40, w: 20);
  print(boy.SayHi());
  boy.MySayHi();

  Person person = boy as Person;
  //polymopishm
  print(person.SayHi());
}

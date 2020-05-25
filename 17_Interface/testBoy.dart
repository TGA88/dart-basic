import 'package:mylib/person.dart';
import 'package:mylib/boy.dart';
import 'package:mylib/ISinger.dart';

void main(List<String> args) {
  Boy boy = new Boy(h: 50, w: 20);
  Person person = boy;

  // person.Sing Person cannot sing because it isnot  imlement Interface ISinger.
  ISinger singer = boy;
  singer.Sing();
}

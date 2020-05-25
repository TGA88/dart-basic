import 'package:mylib/person.dart';
import 'package:mylib/girl.dart';
import 'package:mylib/ISinger.dart';
import 'package:mylib/IDancer.dart';

void main(List<String> args) {
  Girl girl = new Girl(40, 20);
  print('SayHi:${girl.SayHi()}');
  girl.TellMyGender();

  Person person = girl;
  // Use Abstract Function
  print('Peroson SayHi : ${person.SayHi()}');
  print('Peroson TellGener :');
  person.TellMyGender();

  ISinger singer = girl;
  singer.Sing();

  IDancer dancer = girl;
  dancer.Dance();
}

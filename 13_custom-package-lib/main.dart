import 'package:mylib/multi-lib/multi.dart';
import 'package:mylib/single-lib/singlelib1.dart' as sg;
import 'package:mylib/single-lib/singlelib2.dart' as sg2;

void main(List<String> args) {
// use from multilib
  PrintLib3();
  PrintLib2();
  PrintLib();

  PrintAllLib();

  //use from signlelib
  sg.PrintSlLib();

  sg2.PrintSlLib2();
}

library multilib;
part 'lib2.dart';
part 'lib3.dart';

String libName =  "multiLib";
String _msg = "this is ${libName}";

void PrintLib(){
  print(_msg);
}

void PrintAllLib(){
  print("Print From Function PrintAllLib");
  PrintLib();
  PrintLib2();
  PrintLib3();
}

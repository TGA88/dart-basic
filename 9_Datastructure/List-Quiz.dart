import 'dart:io';

void main(List<String> args) {
  String name;
  int age;
  String gender;
  String nickName;

  String wantDelete;

  List<dynamic> _list = [];
  // Step1
  stdout.writeln("คุณชื่ออะไร");
  name = stdin.readLineSync();

  stdout.writeln("คุณอายุเท่าไร");
  age = int.parse(stdin.readLineSync());

  stdout.writeln("เพศอะไร (m or w)");
  gender = stdin.readLineSync();
  _list.add(name);
  _list.add(age);
  _list.add(gender);

  print("ข้อมูลใน List");
  stdout.writeln(_list);
/////////////////////

//Step2
  stdout.writeln("กรุณากรอกชื่อเล่น");
  nickName = stdin.readLineSync();
  _list[0] = nickName;
  print("ข้อมูลใน List");
  stdout.writeln(_list);
  ///////////////

//Step3
  stdout.writeln("คุณต้องการลบข้อมูลหรือไม่");
  wantDelete = stdin.readLineSync();

  if (wantDelete == 'y') {
    _list.clear();
  } else {
    _list.remove(gender);
  }
  print("ข้อมูลใน List");
  stdout.writeln(_list);
}

import 'package:mylib/ISinger.dart';
import 'package:mylib/person.dart';
import 'package:meta/meta.dart';

class Boy extends Person implements ISinger {
  Boy({@required double h, @required double w})
      : super('b', height: h, weight: w);

String _name;
String _sureName;

  @override // override no effect with baseClass that isnot abstract
  String SayHi() {
    return 'สวัสดีครับ';
  }

  // for test override
  void MySayHi() {
    print('MySayHi');
    print('this is Boy.SayHi : ${SayHi()}');
  }


  void setFullName(String name, String sureName) {  
      _name=name;
      _sureName=sureName;
  }
    void TellFullName() {
   print('Myname is ${_name} ${_sureName}');
  }

  @override
  void Sing() {
    print("a boy is singing");
  }
}

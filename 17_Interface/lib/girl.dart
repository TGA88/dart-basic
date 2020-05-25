import 'IDancer.dart';
import 'ISinger.dart';
import 'person.dart';
class Girl extends Person implements ISinger,IDancer {

Girl(double height,double weight):super('g',height:height,weight:height);

  @override
  String SayHi() {
 return "สวัสดีคะ";
  }

  @override
  void Sing() {
   print("I am singing.");
  }

  @override
  void Dance() {
      print("I am dancing.");
  }

}
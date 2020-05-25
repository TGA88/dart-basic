import 'person.dart';
class Girl extends Person {

Girl(double height,double weight):super('g',height:height,weight:height);

  @override
  String SayHi() {
 return "สวัสดีคะ";
  }

}
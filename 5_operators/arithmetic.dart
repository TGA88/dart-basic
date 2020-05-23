void main(List<String> args) {
  //Arithmetic Operators (+,-,*,/,%,~/,++,--)

  print("Arithmetic Operators (+,-,*,/,%,~/,++,--)");
//plus
  int int_num = 1 + 1; // = 2
  double double_num = 1 + 2.5; // =3.5

  print("1 + 1 = ${int_num}");
  print("1 + 2.5 = ${double_num}");

//minus
  int int_minus = 10 - 2; // 8
  double double_minus = 10.5 - 3; // 7.5

  print("10 - 2 = ${int_minus}");
  print("10.5 - 3 = ${double_minus}");

// multiple
  int int_multipile = 2 * 2; //4
  double double_multipile = 3.5 * 3; // 7

  print("2 * 2 = ${int_multipile}");
  print("3.5 * 3 = ${double_multipile}");

  //Devide alway retrun type double
  int int_div = 10 ~/ 6; // it equal to (10 / 6).toInt(); 
  double double_div = 10 / 6;

  print("10 ~/ 6 = ${int_div}");
  print("10 / 6 = ${double_div}");

  //Mod
  int int_mod = 10 % 3;
  double double_mod =
      (10 % 3).toDouble(); // need to covert to double because result is 1

  print("10 mod 3 = ${int_mod}");
  print("10 mod 3 = ${double_mod}");
  print("=========================");
  //=======================================
}

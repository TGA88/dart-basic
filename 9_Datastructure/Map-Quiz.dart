import 'dart:io';

void main(List<String> args) {
  String name ;
  double price ;
  Map<String,double> prices = {};

  print("กรุณา เพิ่มรายการสินค้า");
  print("รายการที่1");

  // Item1
  print("ชื่อสินค้า");
  name = stdin.readLineSync();
  print("ราคา");
  price = double.parse(stdin.readLineSync());
  prices[name] = price;
  print("เพิ่ทรายการสำเร็จ");

    // Item2
    print("รายการที่2");
  print("ชื่อสินค้า");
  name = stdin.readLineSync();
  print("ราคา");
  price = double.parse(stdin.readLineSync());
  prices[name] = price;
  print("เพิ่ทรายการสำเร็จ");

  print("รายการสินค้าใน MAP");
  print(prices);


}
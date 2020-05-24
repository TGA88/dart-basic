import 'dart:io';
import 'package:meta/meta.dart';

Map<String, double> store = {};
void main(List<String> args) {
  bool isStarted = true;
  while (isStarted) {
    bool success = SaveProcess();
    isStarted = !success; //Save สำเร็จให้จบการทำงาน
  }

}

//Define Function
bool SaveProcess() {
  String name = 'TV';
  double price;

  stdout.write("คุณต้องการบันทึกรายการสินค้าใช่หรือไม่:");
  String val = stdin.readLineSync();
  bool res;
  while (val != 'cancel') {
    if (val == 'y') {
      SaveProduct(name, price);
      print('จบการทำงาน');
      val = 'cancel';
      res = true;
    } else if (val == 'n') {
      val = 'cancel';
      res = false;
    } else {
      stdout.write("คุณป้อนข้อมูลไม่ถูกต้อง กรุณาตอบแค่ y หรือ n:");
      val = stdin.readLineSync();
    }
  }
  return res;
}

void ShowAllProduct(Map<String, double> products) {
  print('รายสิ้นค้าและราคาทั้งหมด');
// Anonymous Function
  products.forEach((k, v) {
    print('ชื่อ:${k}');
    print('ราคา:${v}');
  });

  print('รายสิ้นค้าทั้งหมด');
//Fat arrow or lamda function
  products.forEach((k, v) => print('ชื่อ:${k}'));
}

//Position Parameter and Optional parameter(Must be the last order)
void SaveProduct(String pName, [double pPrice]) {
  print("pPrice@SaveProduct:${pPrice}");
  bool hasProduct = CheckProduct(pPrice: pPrice, pName: pName);
  //use below for case Save Success
  //bool hasProduct = CheckProduct(pName: pName);
  if (hasProduct) {
    store[pName] = pPrice;
    print('บันทึกเรียบร้อย');
    ShowAllProduct(store);
  } else {
    print('ไม่สามารถ บันทึกได้');
  }
  ;
}

// NameParameter & Default Value of Parameter.it must be last odrer
bool CheckProduct({@required String pName, double pPrice = 0}) {
  print('pPrice:${pPrice}');
  return pName.isNotEmpty && pPrice != null ? true : false;
}

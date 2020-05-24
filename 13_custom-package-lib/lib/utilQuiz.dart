import 'dart:io';


const quitCmd = "quit";
const saveCmd = "save product";
const homeCmd = "go home";
const addCmd = "add product";
const showCmd = "show product";

String public_var="public";
String _private_var = "private";

//define private function
String _validProduct(String cmd, Set<String> excepts) {
  String res = excepts.firstWhere((item) => item == cmd);
  return res;
}

/// return Next Command
String addProduct(Map<String, double> productTmp) {
  String name;
  double price;

  String newCmd;
  String res;

  print("ชื่อสินค้า");
  newCmd = stdin.readLineSync();

//valid cmd
  res = _validProduct(newCmd, <String>{quitCmd, homeCmd});
  if (res.isNotEmpty) return res;

  //set name
  name = newCmd;

  print("ราคาสินค้า");
  newCmd = stdin.readLineSync();

  res = _validProduct(newCmd, <String>{quitCmd, homeCmd});
  if (res.isNotEmpty) return res;

//set Price
  price = double.parse(newCmd);

  //Save to Cache
  productTmp[name] = price;

  return addCmd;
}

/// this function merge product from cache to store
/// the result is next cmd
String saveProduct(Map<String, double> cache, Map<String, double> store) {
  print('are you sure to save (y/n) this data: ${cache}');
  String isSave = stdin.readLineSync();
  if (isSave == 'y') {
    store.addAll(cache);
    print('บันทึกสำเร็จ');
    cache.clear();
  } else {
    print('ไม่ได้บันทึกข้อมูล');
  }
  return homeCmd;
}

String homeProcess(msg) {
  stdout.write(msg);
  return stdin.readLineSync().trim();
}

String showAllProduct(var store) {
  if (store.length < 1) {
    print("ไม่มีสินค้าในStock");
    return homeCmd;
  }
  for (var item in store.keys) {
    print('ชื่อสินค้า: ${store[item]}');
    print('ราคาสินค้า: ${item}');
  }
  return homeCmd;
}

import 'dart:io';

void main(List<String> args) {
  bool isStarted = true;
  String name;
  double price;
  String newCmd;
  String promptMsg = 'คุณต้องการทำอะไร:';

  Map<String, double> products = Map();
  Map<String, double> tmp = Map();

  const quitCmd = "quit";
  const saveCmd = "save product";
  const homeCmd = "go home";
  const addCmd = "add product";
  const showCmd = "show product";

  String currentCmd;

  currentCmd = homeCmd;
  while (isStarted) {
    switch (currentCmd) {
      case addCmd:
        {
          print("ชื่อสินค้า");
          newCmd = stdin.readLineSync();
          if (newCmd == quitCmd) {
            currentCmd = quitCmd;
            break;
          }
          if (newCmd == homeCmd) {
            currentCmd = homeCmd;
            break;
          }
          //set name
          name = newCmd;

          print("ราคาสินค้า");
          newCmd = stdin.readLineSync();
          if (newCmd == quitCmd) {
            currentCmd = quitCmd;
            break;
          }
          if (newCmd == homeCmd) {
            currentCmd = homeCmd;
            break;
          }
          price = double.parse(newCmd);
          newCmd = null;
          tmp[name] = price;
        }
        break;
      case saveCmd:
        {
          print('are you sure to save (y/n) this data: ${tmp}');
          String isSave = stdin.readLineSync();
          if (isSave == 'y') {
            products.addAll(tmp);
            print('บันทึกสำเร็จ');
            tmp.clear();
            currentCmd = homeCmd;
          }
        }
        break;
      case homeCmd:
        {
          name = null;
          price = null;
          stdout.write(promptMsg);
          currentCmd = stdin.readLineSync().trim();
        }
        break;
      case showCmd:
        {
          if (products.length < 1) {
            print("ไม่มีสินค้าในStock");
            currentCmd = homeCmd;
            break;
          }
          for (var item in products.keys) {
            print('ชื่อสินค้า: ${products[item]}');
            print('ราคาสินค้า: ${item}');
          }
          currentCmd = homeCmd;
        }
        break;
      case quitCmd:
        {
          isStarted = false;
        }
        break;
      default:
        {
          print("invalid command");
          currentCmd = homeCmd;
        }
    }
  }
}

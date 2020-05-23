void main(List<String> args) {
//for
print('for');
  List<String> colors = ['red', 'green', 'blue', 'yellow'];
  int count = colors.length;
  for (var i = 0; i < count; i++) {
    if (i == 2) {
      print(colors[i]);
      break;
    }
   }
// for-in
print('for-in');
  for (var item in colors) {
    if (item != 'blue') {
      continue;
    }
    print(item);
  }

//forEach
print('forEach Set');
  Set<String> alphabet = {'a', 'b', 'c'};
  alphabet.forEach((f) => print(f));

print('forEach Map');
  Map<String, double> products = {'TV': 20000, 'Phone': 30000};
  products.forEach((k, v) {
    print('key : ${k}');
    print('value:${v}');
  });

//Iterator
print('iterator');
  Iterator looper = colors.iterator;
  if (looper.moveNext()) {
    print(looper.current);
  }

//while
print('while');
  while (looper.moveNext()) {
    print(looper.current);
  }

//do-while
print('do-while');
  int index = 0;
  do {
    print(colors[index]);
    index++;
  } while (colors.length > index);
}

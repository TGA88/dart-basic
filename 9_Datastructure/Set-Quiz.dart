import 'dart:io';

void main(List<String> args) {
  String ans1;
  String ans2;
  Set<String> colors = {'red', 'green', 'blue'};

  stdout.writeln("what color do you like?");
  ans1 = stdin.readLineSync();
  colors.add(ans1);
  print('Set colors');
  print(colors);

  Iterator loop = colors.iterator;
  while (loop.moveNext()) {
    print(loop.current);
  }

  stdout.writeln("what color do you like?");
  ans2 = stdin.readLineSync();
  colors.add(ans2);
  print('Set colors');
  print(colors);

  for (var item in colors) {
    print(item);
  }
}

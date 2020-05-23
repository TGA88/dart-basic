void main(List<String> args) {

  //Generic List
  List<int> ages = new List<int>();
  //firt index is 0;

  // add one item
  ages.add(1);
  print(ages);

  //add range item
  ages.addAll([3, 2, 4]);
  print(ages);

// count item
  print('length : ${ages.length}');

//remove by index
ages.removeAt(1); // remove value 3 by index 1 from  [1,3,2,4]
print(ages);

 // remove by value
ages.remove(4);
print(ages);

//dynamic type List
var new_List = ['a','b',10,9];
print (new_List);

//without spread operator
var merge_List = [ages,new_List];
print('merge without spread');
print(merge_List);

//pread operator
var spread_List = [...ages,...new_List];
print('merge with spread operator');
print(spread_List);

}

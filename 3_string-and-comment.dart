void main(List<String> args) {
// signle line comment

//print Multiline String with double quote and single quote
  String desc1 = """ multiline string 
with double quote
""";

  String desc2 = ''' multiline string 
with single quote
''';

  print(desc1);

  print(desc2);

  /*multiline comment 
  I will show how to use String Inteporation
  */

  String firstName = 'BeBest';
  String sureName = "Dev";

  print('FirstName : "${firstName}"');
  print("LastName : '${sureName}'");
  print("fullName : \"${firstName} ${sureName}\" "); // use escape to show double qoute in string
}

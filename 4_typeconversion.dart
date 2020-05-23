void main(List<String> args) {
  double height = 168.5 / 100;
  String weight_str = "74.5";
  String age_str = '30';

// No Implecit TypeConversion
//String to int
int age = int.parse(age_str);

//String to double
double weight = double.parse(weight_str);

// convert int to string
  print("Age : " + age.toString());
// convert double to string
  print("height is " + height.toStringAsFixed(2) + " meter");

//String interpolatoin Autoconvert any type to string
  print("weight : ${weight}");
}

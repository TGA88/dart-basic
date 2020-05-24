import 'package:intl/intl.dart';

void main(List<String> args) {
  DateTime _date = new DateTime.now();
  String dFormat = new DateFormat('dd/MMM/yyyy').format(_date);
  print("date is : ${dFormat}");
}


void  main(List<String> args) {

String fullName = "BeBestDev";
var birthDate= new DateTime.utc(1990,1,20);

bool isDate  = birthDate is DateTime;
print("isDate : ${isDate}");

bool isString = fullName is String;
print("isString:${isString}");

bool isNotDate = fullName is! DateTime;
print("isNotDate: ${isNotDate}");

bool isNotString = birthDate is! String;
print("isNotString : ${isNotString}");


}
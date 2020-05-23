void main(List<String> args) {
  //Logical Operators   (&&,||,!)
bool and_opr = (10>9 && 9 >=9);
print ('and_opr = ${and_opr}');

bool or_true_opr = (9>9 || 9>=9);
print("or_true_opr = ${or_true_opr}");

bool or_false_opr = (9>9 ||  8>9);
print("or_flase_opr = ${or_false_opr}");

bool not = !true;
print("not true = ${not} ");


}
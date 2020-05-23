void main(List<String> args) {
  //Nullable (?. , ?? , ??=)

  Human person = Human(); // same the new Human()

  String displayName;

  print("displayName: ${displayName}");

  displayName = person
      ?.fullName; // use ?. to protect error when access fullName of null person
  /* person?.fullName; is similar with below logic
      if (person != null) {
        displayName = person.fullName;
      }
  */
print("displayName: ${displayName}");

  person.fullName = null;
  displayName = person?.fullName ?? "DartBasic";  // define defualt value of person.fullName
  /* person?.fullName ?? "DartBasic"; is similar with below logic
      if (person.fullName == null) {
        displayName = "DartBasic";
      }
  */
print("displayName: ${displayName}");

  String secondName ;
  secondName ??= "value of secondName";
    /* secondName ??= "value of secondName"; is similar with below logic
      if (secondName == null) {
        displayName =  "value of secondName";
      }
  */
  print("secondName: ${secondName}");
  
  
}

class Human {
  String fullName = "BeBestDev";
}

void main(List<String> args) {
  //* if we want to create a private value, we write "_" top of value name.
  // int name=50; -> public
  // int _name =50; -> private
  int int1 = 30;
  //int _int2 = 30.5; // !Error : 30.5 not a int number
  double double1 = 30.5;
  double double2 = 30;

  num intORdouble1 = 30;
  num intORdouble2 = 30.5;

  var intType = 30;
  var doubleType = 30.5;

  String string = "Hello Word!";
  var stringType = "Hello Word!";

  bool isBool = true;
  var isBoolType = true;

  int age1;
  // print(_age); // !Error : _age must not null

  int? _age2;
  print(_age2); // *output: null

  _age2 = 36;
  print("_age2"); // !output: _age2
  print("$_age2"); // *output: 36

  print("$_age2.toString().length"); // !output: 36.toString().length
  print("${_age2.toString().length}"); // *output: 2

  print("$_age2*2"); // !output: 36*2
  print("${_age2 * 2}"); // *output: 72

  // --------------------------------------------------------------
  // FINAL and CONST
  var str = "This is a dart variable.";
  str = "This is not a C++ variable.";

  // we can not use var "final" keyword.
  // final var str2= "This is a dart variable."; // ERROR!
  // ! FINAL :
  final String str2 = "This is a final variable.";
  // or: (final  str2 = "This is a final variable.";)
  // final variables do not be changed.
  // str2 = "This is a final variable."; // ERROR!

  // ! CONST :
  const String str3 = "This is a const variable.";
  // or: (const  str3 = "This is a const variable.";)
  // const variables do not be changed.
  // str2 = "This is a const variable."; // ERROR!

  final DateTime nowDatetime = DateTime.now();
  // final variables do not be changed.

  // const keyword do not use when runtime process.
  // const DateTime nowDatetime2 = DateTime.now(); // ERROR!
  // final variables do not be changed.
}

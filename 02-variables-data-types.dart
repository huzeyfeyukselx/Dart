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
}

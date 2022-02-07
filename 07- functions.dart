void main(List<String> args) {
  withoutParameterFunction();
  withParameterFunction(58);
  var returnValue = returnValueFunction();
  print("Return value is ${returnValue.toString()}.");
}

//----------------------------------------------------------------------

// !void withoutParameterFunction(){}
withoutParameterFunction() {
  print("This function is without parameter !");
}

// !Fat Arrow : we only use it for functions that process one line.
withoutParameterFunction2() => print("This function is without parameter !");

//----------------------------------------------------------------------

// !void withParameterFunction(int parameter){}
withParameterFunction(int parameter) {
  print("This function is with parameter! This parameter is " +
      "$parameter and type of this is ${parameter.runtimeType}.");
}

// !Fat Arrow : we only use it for functions that process one line.
withParameterFunction2(int parameter) => print(
    "This function is with parameter! This parameter is $parameter and type of this is ${parameter.runtimeType}.");

//----------------------------------------------------------------------

// !int returnValueFunction(){}
returnValueFunction() {
  return 58;
}

// !Fat Arrow : we only use it for functions that process one line.
returnValueFunction2() => 58;

//----------------------------------------------------------------------

String returnStringFunction(int _number1, int _number2) {
  if (_number1 < _number2) {
    return "$_number2 is great!";
  } else if (_number1 > _number2) {
    return "$_number1 is great!";
  } else {
    return "Numbers are equal!";
  }
}

// !Fat Arrow : we only use it for functions that process one line.
String returnStringFunction2(int _number1, int _number2) => _number1 < _number2
    ? "$_number2 is great!"
    : (_number1 > _number2 ? "$_number1 is great!" : "Numbers are equal!");

//----------------------------------------------------------------------

// !required function
void requiredFunction(int a, int b) =>
    print("a and b parameters are required.");

//----------------------------------------------------------------------
// !optionel parameter
void optionelFunction(int a, [int b = 0, int? c]) => print(
    "a parameter is required. But b and c are optionel. b default value is 0 and c default value is null.");
/*
    this function call like that ;
    optionelFunction(5);
    optionelFunction(5,6);
    optionelFunction(5,6,8);
    */

void optionelFunction2(int a, {int b = 0, int? c}) => print(
    "a parameter is required. But b and c are optionel. b default value is 0 and c default value is null.");
/*
    this function call like that ;
    optionelFunction3(5);
    optionelFunction3(5, b:6);
    optionelFunction3(5, c:6, b:8);
    */

void optionelFunction3({int a = 0, int b = 0, int? c}) => print(
    "a, b and c parameters are optionel. a and b default values are 0 and c default value is null.");
/*
    this function call like that ;
    optionelFunction3(a:5);
    optionelFunction3(b:5, a:6);
    optionelFunction3(c:5, a:6, b:8);
    */

/*
 *İf function return a value,
 *we can write return type top of function.
 *if it do not return value, we can write "void" top of function.
*/

//----------------------------------------------------------------------

int function1(int a, int b) {
  return a + b;
}

Function function2 = (int a, int b) {
  return a + b;
};
// Call function ->  function1(5,6);

var function3 = (int a, int b) => (a + b);

// function1,function2 and function3 are same functions.

//----------------------------------------------------------------------
// HIGHER ORDER FUNCTIONS

void printIndex(String value, int index) {
  print("Value : $value and index : $value");
}

void getIndex(List<String> list, Function printFunction) {
  for (var i = 0; i < list.length; i++) {
    printFunction(list[i], i);
  }
}

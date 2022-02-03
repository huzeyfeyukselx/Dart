void main(List<String> args) {
  int _number1 = 50;
  int _number2 = 27;

  if (_number1 < _number2) {
    print("$_number2 is great!");
  } else if (_number1 > _number2) {
    print("$_number1 is great!");
  } else {
    print("Numbers are equal!");
  }

  _number1 < _number2
      ? print("$_number2 is great!")
      : (_number1 > _number2
          ? print("$_number1 is great!")
          : print("Numbers are equal!"));

  int? _nullInt;

  _nullInt ?? print("_nullInt is not NULL!"); // * (??)-> if not null
}

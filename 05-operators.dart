void main(List<String> args) {
  var value;
  var value1 = 10;
  var value2 = 4;

  value = value1 + value2;
  print(value); // *output : 14

  value = value1 - value2;
  print(value); // *output : 6

  value = value1 * value2;
  print(value); // *output : 40

  value = value1 / value2;
  print(value); // *output : 2.5

  value = value1 % value2;
  print(value); // *output : 2

  // *value1 is 10:
  print(value++); // *output : 10
  print(++value); // *output : 12

// Comparison Operators

  // (==)
  print(2 == 2); // *output : true
  print("Java" == "C++"); // *output : false
  print(2 == "2"); // *output : false
  // (!=)
  print(2 != 4); // *ooutputut : true
  print(2 != 2); // *ooutputut : false
  // (>)
  print(5 > 4); // *output : true
  // (<)
  print(5 < 4); // *output : false
  // (>=)
  print(5 >= 5); // *output : true
  // (<=)
  print(5 <= 5); // *output : true

// ---------------------------------------
// Logical Operators

  // NOT (!)
  print(!(2 == 2)); // *output : false

  // AND (&&)
  // T	T	T
  // T	F	F
  // F	T	F
  // F	F	F
  print((2 == 2) && ("Ahmet" == "Ahmet")); // *output : true

  // OR (||)
  // T	T	T
  // T	F	T
  // F	T	T
  // F	F	F
  print((2 == 2) || ("Ahmet" == "Mehmet")); // *output : true
}

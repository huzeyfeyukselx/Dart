import 'dart:io';

void main(List<String> args) {
  print("Hello Word!");
  print('Hello Word!');
  print('Dart \'First\' Project!');
  print("Dart 'First' Project!");
  print("This is " + "6." + " line.");

  String name;
  String answer;
  print("What is your name?");
  name = stdin.readLineSync().toString();
  print("You are $name! Are you sure? (Y/N)");
  answer = stdin.readLineSync().toString();
  answer == "y" ? print("Welcome to dart $name !") : print("Please get out !");

  // This is comment line...

  /* This
  is
  comment
  blok. */
}

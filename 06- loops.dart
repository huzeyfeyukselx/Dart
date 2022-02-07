void main(List<String> args) {
  // !While Loop
  int i = 0;
  while (i < 5) {
    print(i);
    i++; // *i+=1; / i =i+1;
  } // *output : 0 1 2 3 4

  // !DO WHILE
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);
  // *output : 0 1 2 3 4

  i = 0;
  for (int i = 0; i < 5; i++) {
    print(i);
  } // *output : 0 1 2 3 4

  List lessons = ["C++", "Dart", "C#", "Java"];
  for (var lesson in lessons) {
    print(lesson);
  }

  // !CONTINUE
  i = 0;
  while (i < 10) {
    if (i == 3 || i == 5) {
      i++;
      continue; // *Loop goes to next step.
    }
    print(i);
    i++;
  } // *output : 1 2 4 6 7 8 9

  // !BREAK
  i = 0;
  while (i < 10) {
    print(i);
    if (i == 5) {
      break; // *The loop is terminated!
    }
    i++;
  } // *output : 1 2 3 4 5
}

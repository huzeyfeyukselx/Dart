void main(List<String> args) {
  //LIST:
  List<int> numbersTwo = List<int>.filled(5, 2);
  // ! or : List<int> numbersTwo = List<int>.filled(5, 2);
  print(numbersTwo); // output : [2, 2, 2, 2, 2]

  List<int> numbersZero = List.filled(3, 0);
  print(numbersZero); // output : [0, 0, 0]

  numbersTwo[0] = 5;
  numbersTwo[1] = 8;
  numbersTwo[2] = 1;
  numbersTwo[3] = 9;
  numbersTwo[4] = 3;
  print(numbersTwo); // output : [5, 8, 1, 9, 3]

  List<dynamic> dynamicList = List.filled(3, 0);
  // ! or : List dynamicList = List.filled(3, 0);

  dynamicList[0] = 5;
  dynamicList[1] = "String";
  dynamicList[2] = true;
  print(dynamicList); // output : [5, String, true]

  int i = 1;
  for (var item in dynamicList) {
    print("Type of ${i++}. member is ${item.runtimeType}");
  }

  List<dynamic> expandableList = [];
  // ! or :  List<dynamic> expandableList = List.empty(growable: true);
  // ! or :  var expandableList = <dynamic>[];
  expandableList.add(true);
  expandableList.add("Hello World!");
  print(expandableList); // output : [true, Hello World!]

  List<dynamic> expandableList2 = [5, 6, "C++", true];
  expandableList2.add(false);
  expandableList2.add(3.55);
  print(expandableList2); // output : [5, 6, C++, true, false, 3.55]

  List<dynamic> expandableList3 = List.filled(5, 3, growable: true);
  expandableList3.add(false);
  expandableList3.add(3.55);
  print(expandableList3); // output : [3, 3, 3, 3, 3, false, 3.55]

  // expandableList3.isEmpty;
  // expandableList3.isNotEmpty;
  // expandableList3.first;
  // expandableList3.last;
  // expandableList3.remove(3.55); // value
  // expandableList3.removeAt(3); // index
  // bool isContains=expandableList3.contains(3.55);
  // expandableList3.indexOf(3.55); // return index of 3.55

  //--------------------------------------------------------------
  //SET :

  Set<String> setList = Set();
  setList.add("Ahmet");
  setList.add("Ahmet");
  setList.add("Ahmet");
  setList.add("Hasan");
  setList.add("Huseyn");
  setList.add("Muhammed");
  setList.add("Muhammed");

  print(setList);
  // out : {Ahmet, Hasan, Huseyn, Muhammed} : Members are used once.

  Set<int> setList2 = Set.from([1, 5, 8, 8, 8, 8, 9, 5, 2, 7]);
  setList2.add(9);
  print(setList2);
  // out : {1, 5, 8, 9, 2, 7} : Members are used once.

  setList2.clear();
  List<int> numbers = [1, 5, 8, 8, 8, 8, 9, 5, 2, 7];
  print(numbers);
  // out : [1, 5, 8, 8, 8, 8, 9, 5, 2, 7]
  setList2.addAll(numbers);
  print(setList2);
  // out : {1, 5, 8, 9, 2, 7} : Members are used once.

  //--------------------------------------------------------------
  //SET :

  Map<int, String> licensePlate = {58: "Sivas", 06: "Ankara", 34: "İstanbul"};
  print(licensePlate);
  // out : {Sivas: 58, Ankara: 6, İstanbul: 34}
  print(licensePlate[58]);
  // out : Sivas

  Map<String, dynamic> person = {
    "name": "Huzeyfe",
    "surname": "YUKSEL",
    "age": 27,
    "single": false,
  };
  print(person);
  // out : {name: Huzeyfe, surname: YUKSEL, age: 27, single: false}
  print(person["age"]);
  // out : 27

  for (String item in person.keys) {
    print("$item :${person[item]} ");
  }
  // ! OR:
  for (var item in person.entries) {
    print("${item.key} :${item.value} ");
  }
  /* output:
name :Huzeyfe
surname :YUKSEL
age :27
single :false
    */

  if (person.containsKey("age")) {
    print("Person age is ${person["age"]}.");
  }

  Map<String, dynamic> book = Map();
  book["Page Count"] = 255;
  book["Book Name"] = "Hayvan Çiftliği";
  book["Is Read?"] = true;
  print(book);
  // out : {Page Count: 255, Book Name: Hayvan Çiftliği, Is Read?: true}

  //MAP LIST:7
  List<Map<String, dynamic>> mapList = [];

  Map<String, dynamic> bookMap = {
    "Book Name": "Hayvan çiftliği",
    "Page Count": 300,
    "Is Read?": true
  };

  mapList.add(bookMap);
  bookMap["Page Count"] = 230;
  bookMap["Book Name"] = "İnsan Ne ile Yaşar";
  bookMap["Is Read?"] = true;
  mapList.add(bookMap);

  mapList.add({
    "Book Name": "Kürk Mantolu Madonna",
    "Page Count": 195,
    "Is Read?": false
  });

  print(mapList);
  /* output:
  [
    {Book Name: İnsan Ne ile Yaşar, Page Count: 230, Is Read?: true},
    {Book Name: İnsan Ne ile Yaşar, Page Count: 230, Is Read?: true},
    {Book Name: Kürk Mantolu Madonna, Page Count: 195, Is Read?: false}
  ]

  */
}

void main(List<String> args) {
  genericClass newGeneric = genericClass();
  newGeneric.push([1, 2, 3]);
  newGeneric.push(["Java", "Dart", "C#"]);
  print("Returned Value : ${newGeneric.pop()}");
  //---------------------
  genericClass<String> newGeneric2 = genericClass();
  newGeneric2.push("Java");
  newGeneric2.push("Dart");
  print("Returned Value : ${newGeneric2.pop()}");
}

class genericClass<T> {
  List<T> _list = <T>[];

  void push(T memberAdd) {
    _list.add(memberAdd);
    print("Member added!");
  }

  //LIFO
  T pop() {
    return _list.removeLast();
  }
}

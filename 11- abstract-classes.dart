void main(List<String> args) {}

// ! We can not generate objects from abstract classes.
// Ex: Shape shape1 = new Shape(); // ERROR
//--------------------------------------------------------------------------
abstract class Shape {
  // Abstract Method has not a body.
  CalculateArea(); // ! It is sufficient to have least one abstract function in an abstract class.
  CalculatePerimeter(); // Abstract Class
  void WhatIsMe() {
    print("I am a abstract class");
  }
}

class Square extends Shape {
  @override
  CalculateArea() {
    // We write codes to calculate area of the Square.
    print("The method of base class overridded.");
  }

  @override
  CalculatePerimeter() {
    // We write codes to calculate perimeter of the Square.
    print("The method of base class overridded.");
  }
}

//--------------------------------------------------------------------------

abstract class Database {
  AddRecord();
  UpdateRecord();
  DeleteRecord();
  SoftDeleteRecord();
}

// With "extends" keyword we can add only one class.
// But with "implements" keyword we can add more than one class.
class MySQL extends Database {
  @override
  AddRecord() {
    print("Object added to MySQL.");
  }

  @override
  DeleteRecord() {
    print("Object deleted to MySQL.");
  }

  @override
  SoftDeleteRecord() {
    print("Object soft deleted to MySQL.");
  }

  @override
  UpdateRecord() {
    print("Object updated to MySQL.");
  }
}

void main(List<String> args) {
  Book newBook = Book();
  newBook.bookName = "Direnişin Dili";
  newBook.pageCount = 350;
  newBook.isRead = true;
  newBook.shelfLocation = "History-A105";
  /* !OR :
Book newBook = Book("Direnişin Dili",350,true,"History-A105");
  */
  newBook.getShelfLocation();
}

class Book {
  String? bookName;
  int? pageCount;
  bool? isRead;
  String? shelfLocation;

  // ! CONSTRUCTOR METHOD-1 :
  Book() {
    print("This method only run when it first call.");
  }

  factory Book.NewFactoryConstructor(
      String bookName, int pageCount, String shelfLocation) {
    print("This method only run when it first call.");
    if (shelfLocation == "") {
      return Book();
    } else {
      return Book();
    }
  }
// ! CONSTRUCTOR METHOD-2 :
/*
  Book(String bookName, int pageCount, bool isRead, String shelfLocation) {

    this.bookName= bookName;
     this.pageCount=pageCount;
     this.isRead=isRead;
     this.shelfLocation=shelfLocation;

    print("This method only run when it first call.");

    return 0;  //! ERROR : Constructor methods do not return value! If we want to return value, we use factory constructor.
  }
*/

// ! CONSTRUCTOR METHOD-2 :
/*
  Book(this.bookName, this.pageCount, this.isRead, this.shelfLocation) {
    print("This method only run when it first call.");
     return 0;  //! ERROR : Constructor methods do not return value! If we want to return value, we use factory constructor.
  }
*/

// ! CONSTRUCTOR METHOD-2 :

/*
  Book.AnotherConstructorMethod2(this.bookName) {

     print("This method only run when it first call.");
      return 0;  //! ERROR : Constructor methods do not return value! If we want to return value, we use factory constructor.
  }

  Book.AnotherConstructorMethod3(this.bookName, this.pageCount,) {

     print("This method only run when it first call.");
      return 0;  //! ERROR : Constructor methods do not return value! If we want to return value, we use factory constructor.
  }
*/

// ! SETTER METHOD:

  void set setMethod(int newPageCount) {
    this.pageCount = newPageCount;
  }
  // ! USE : newBookObject.setMethod=500;

  String get getMethod {
    return "This book name is $bookName.";
  }
  // ! USE : newBookObject.getMethod;

  getShelfLocation() {
    print("This book is in $shelfLocation.");
  }
}

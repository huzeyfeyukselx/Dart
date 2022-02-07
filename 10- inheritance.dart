void main(List<String> args) {
  NormalUser normalUser = NormalUser();
  normalUser.password = "";
  normalUser.userName = "Huzeyfe";
  normalUser.loginUser();
  normalUser.likePost();

  AdminUser adminUser = AdminUser();
  adminUser.password = "";
  adminUser.userName = "Muhammed";
  adminUser.loginUser();
  adminUser.deleteComment();

// !POLIMORFIZM
  User upCastingUser1 = AdminUser(); // AdminUser is User.
  User upCastingUser2 = NormalUser(); // NormalUser is User.

  List<User> users = [];
  users.add(normalUser);
  users.add(adminUser);
  users.add(upCastingUser1);
  users.add(upCastingUser2);

  // Although the parameter is User type, we can send NormalUser type.
  checkLogin(normalUser);
  // Although the parameter is User type, we can send AdminUser type.
  checkLogin(adminUser);
}

checkLogin(User loginCheck) {
  print("Login is checking...");
}

// ! INHERITANCE :
class User {
  String userName = "";
  String eMail = "";
  String password = "";

  User() {
    print(
        "Contracture method of the base class runs first! This is User Class!");
  }

  void loginUser() {
    print("$userName logged in!");
  }
}

class NormalUser extends User {
  void likePost() {
    print("Post liked!");
  }

  NormalUser() {
    print(
        "Contracture method of base class runs first! This is Normal User Class!");
  }
}

class AdminUser extends User {
  void deleteComment() {
    print("Comment deleted!");
  }

  // !The "super()" keyword specifies the contracture method of the base class

  AdminUser() : super() {
    print(
        "Contracture method of base class runs first! This is Admin User Class!");
// ! The "super" keyword specifies properties of the base class
    print("Username : ${super.userName}");
  }

//  ! İf we want to edit base function , we use key "@override" :
  @override
  void loginUser() {
    print("$eMail logged in!");
  }
}

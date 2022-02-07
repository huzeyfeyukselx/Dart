void main(List<String> args) {
  // We don't need to create an object from the Database class.
  // We can to access with point all static properties.
  Database.hostName = "localhost";
  Database.password = "1234";
  Database.getConnectionString();
}

class Database {
  static String hostName = "";
  static String password = "";

  static void getConnectionString() {
    print("ConnectionString\\$hostName\\$password");
  }
}

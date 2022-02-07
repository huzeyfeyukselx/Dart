void main(List<String> args) {
  print("Step 1"); // The operation do in the (first) thread.
  print("Step 2"); // The operation do in the (first) thread.
  longtimeProcess();
  Future<String> returnResult = longtimeProcess2();
  returnResult.then((String value) => (print(value))).catchError((error) {
    print(error.toString());
  }).whenComplete(() => print("Step LAST -> All Process Completed!"));
  print("Step 6"); // The operation do in the (first) thread.
  print("Step 7"); // The operation do in the (first) thread.
}

void longtimeProcess() {
  print("Step 3"); // The operation do in the (first) thread.

  // The operation do in the (another one) thread.
  Future.delayed(Duration(seconds: 2), () {
    print("Step 4 -> After 2 seconds");
  });
}

// FUTURE TYPE METHOD:

Future<String> longtimeProcess2() {
  // The operation do in the (another one) thread.
  Future<String> result = Future.delayed(Duration(seconds: 3), () {
    return "Step 5 -> After 3 seconds";
  });

  return result;
}

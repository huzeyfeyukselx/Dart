void main(List<String> args) async {
  print("Step 1"); // The operation do in the (first) thread.
  print("Step 2"); // The operation do in the (first) thread.
  String returnData = await getPersonList();
  print(returnData.toString());
  print("Step 5"); // The operation do in the (first) thread.
  print("Step 6"); // The operation do in the (first) thread.
}

Future<String> getPersonList() {
  print("Step 3"); // The operation do in the (first) thread.
  // The operation do in the (another one) thread.
  return Future.delayed(Duration(seconds: 2), () {
    return "Step 4 -> After 2 seconds";
  });
}

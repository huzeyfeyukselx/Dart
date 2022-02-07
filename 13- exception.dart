void main(List<String> args) {
  try {
    int result = (100 ~/ 0).toInt();
    print(result.toString());
  } on IntegerDivisionByZeroException catch (e) {
    print("${e.message}");
  } catch (e) {
    print("Error! -> ${e.toString()}");
  } finally {
    print("Allways run.");
  }
}

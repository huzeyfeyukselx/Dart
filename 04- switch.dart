void main(List<String> args) {
  // var _whatIsType = Array(2, 2);
  var _whatIsType = "I am a String type!";

  switch (_whatIsType.runtimeType) {
    case String:
      print("_whatIsType is a String type!");
      break;

    case int:
      print("_whatIsType is a int type!");
      break;

    case double:
      print("_whatIsType is a double type!");
      break;

    default:
      print("I do not know! Who are you!");
      break;
  }
}

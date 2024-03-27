import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "Can't Be Empty";
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phoneNumber";
    }
  }
  if (val.length < min) {
    return "Can't Be Less Then $min";
  }
  if (val.length > max) {
    return "Can't Be Larger Then $max";
  }
}

import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class VerifyCodeForgetPassWordData {
  Crud crud;
  VerifyCodeForgetPassWordData(this.crud);
  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeForgetPassWord, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}

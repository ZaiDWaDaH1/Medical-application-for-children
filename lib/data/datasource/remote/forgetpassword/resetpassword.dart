import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class ResetPassWordData {
  Crud crud;
  ResetPassWordData(this.crud);
  postData(String email, String password) async {
    var response = await crud.postData(AppLink.resetPassWord, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

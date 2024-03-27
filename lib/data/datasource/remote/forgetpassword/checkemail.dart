import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}

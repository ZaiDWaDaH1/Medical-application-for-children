import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  postData(String username, String password, String email, String phone,
      String sex, String age, String address, String typeofuser) async {
    var response = await crud.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
      "sex": sex,
      "age": age,
      "address": address,
      "typeofuser": typeofuser,
    });
    return response.fold((l) => l, (r) => r);
  }
}

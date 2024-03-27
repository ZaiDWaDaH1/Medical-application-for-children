// ignore_for_file: avoid_print

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassWordController extends GetxController {
  resetpass();
  goToSuccessRessetPassword();
}

class ResetPassWordControllerImp extends ResetPassWordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  ResetPassWordData resetPassWordData = ResetPassWordData(Get.find());

  @override
  resetpass() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: 'warning', middleText: "Password Not Match");
    }

    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPassWordData.postData(email!, password.text);
      print("========================== Controller$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          Get.offNamed(
            AppRoute.successResetPassWord,
          );
        } else {
          Get.defaultDialog(title: 'Warning', middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSuccessRessetPassword() {}

  @override
  void onInit() {
    email = Get.arguments["email"];
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
}

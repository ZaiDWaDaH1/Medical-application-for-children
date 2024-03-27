// ignore_for_file: avoid_print

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassWordController extends GetxController {
  checkemail();
}

class ForgetPassWordControllerImp extends ForgetPassWordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  @override
  checkemail() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      print("========================== Controller$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          Get.offNamed(AppRoute.verFiyCode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: 'Warning', middleText: "Email Not FoundS");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}

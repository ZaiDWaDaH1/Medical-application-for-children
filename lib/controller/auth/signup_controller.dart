// ignore_for_file: avoid_print

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToLogIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? sex;
  String type = "Family";
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phoneNumper;
  late TextEditingController age;
  late TextEditingController address;

  StatusRequest statusRequest = StatusRequest.none;
  SignUpData signUpData = SignUpData(Get.find());
  List data = [];

  @override
  signup() async {
    if (sex != null) {
      var formData = formstate.currentState;
      if (formData!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await signUpData.postData(username.text, password.text,
            email.text, phoneNumper.text, sex!, age.text, address.text, type);
        print("========================== Controller$response");
        statusRequest = handlingData(response);
        if (StatusRequest.success == statusRequest) {
          if (response["status"] == "success") {
            // data.addAll(response['data']);
            Get.offNamed(AppRoute.verFiyCodesSignUp,
                arguments: {"email": email.text});
          } else {
            Get.defaultDialog(
                title: 'Warning',
                middleText: "Phone Number OR Email Already Exists");
            statusRequest = StatusRequest.failure;
          }
        }
        update();
      } else {}
    } else {
      Get.defaultDialog(
          title: 'Warning', middleText: "please Chose sex of your child");
      statusRequest = StatusRequest.failure;
    }
  }

  @override
  goToLogIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phoneNumper = TextEditingController();
    age = TextEditingController();
    address = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phoneNumper.dispose();
    age.dispose();
    address.dispose();
    super.dispose();
  }
}

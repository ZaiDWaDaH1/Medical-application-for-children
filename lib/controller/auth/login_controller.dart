// ignore_for_file: avoid_print

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassWord();
}

class LoginControllerImp extends LoginController {
  LogInData logInData = LogInData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassWord = true;
  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();

  showPassWord() {
    isShowPassWord = isShowPassWord == true ? false : true;
    update();
  }

  @override
  login() async {
    var formData = formstate.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await logInData.postData(email.text, password.text);
      print("========================== Controller$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          myServices.sharedPreferences
              .setInt("id", response["data"]['users_id']);
          myServices.sharedPreferences
              .setString("email", response["data"]['users_email']);
          myServices.sharedPreferences
              .setString("username", response["data"]['users_name']);
          myServices.sharedPreferences
              .setString("phone", response["data"]['users_phone']);
          myServices.sharedPreferences
              .setInt("age", response["data"]['users_age']);
          myServices.sharedPreferences
              .setString("sex", response["data"]['users_sex']);
          myServices.sharedPreferences
              .setString("address", response["data"]['usres_address']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(
            AppRoute.homePage,
          );
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: "Email Or PassWord Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  goToForgetPassWord() {
    Get.offNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}

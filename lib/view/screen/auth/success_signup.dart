import 'package:care_4u_m3hadtqani/controller/auth/successsignup_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customButtomAuth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBarAuth(text: "32".tr),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 250,
            color: AppColor.primaryColor,
          )),
          const SizedBox(
            height: 20,
          ),
          Text(
            '37'.tr,
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '28'.tr,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 260,
          ),
          SizedBox(
            width: 250,
            child: CustomButtomAuth(
              text: "31".tr,
              onPressed: () {
                controller.goToLogin();
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ]),
      ),
    );
  }
}

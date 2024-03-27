import 'package:care_4u_m3hadtqani/controller/auth/successresetpassowrd_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customButtomAuth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassWord extends StatelessWidget {
  const SuccessResetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPassWordControllerImp controller =
        Get.put(SuccessResetPassWordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: CustomTextAppBarAuth(text: "32".tr),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
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
            '36'.tr,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 250,
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
            height: 10,
          )
        ]),
      ),
    );
  }
}

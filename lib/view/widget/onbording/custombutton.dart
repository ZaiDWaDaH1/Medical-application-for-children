import 'package:care_4u_m3hadtqani/controller/onboarding_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBording extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 44,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          child: Text('8'.tr)),
    );
  }
}

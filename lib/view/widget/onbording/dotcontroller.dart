import 'package:care_4u_m3hadtqani/controller/onboarding_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotController extends StatelessWidget {
  const DotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          height: 6,
                          width: controller.currentPage == index ? 20 : 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}

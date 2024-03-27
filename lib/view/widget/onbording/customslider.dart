import 'package:care_4u_m3hadtqani/controller/onboarding_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          LottieBuilder.asset(
            onboardingList[i].image!,
            width: 350,
            height: 350,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            onboardingList[i].title!,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 33,
              color: AppColor.black,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onboardingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17)),
          )
        ],
      ),
    );
  }
}

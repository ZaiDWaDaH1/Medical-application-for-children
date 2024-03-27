import 'dart:ui';

import 'package:care_4u_m3hadtqani/controller/onboarding_controller.dart';
import 'package:care_4u_m3hadtqani/core/constant/imageassets.dart';
import 'package:care_4u_m3hadtqani/view/widget/onbording/custombutton.dart';
import 'package:care_4u_m3hadtqani/view/widget/onbording/customslider.dart';
import 'package:care_4u_m3hadtqani/view/widget/onbording/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: Stack(children: [
      Positioned(
        bottom: 100,
        left: 0,
        width: MediaQuery.of(context).size.width,
        child: LottieBuilder.asset(
          AppImageAsset.loop8,
        ),
      ),
      Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
          child: const SizedBox(),
        ),
      ),
      const SafeArea(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  DotController(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBording()
                ],
              ))
        ]),
      ),
    ]));
  }
}

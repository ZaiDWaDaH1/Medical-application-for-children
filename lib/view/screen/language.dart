import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/localization/changelocal.dart';
import 'package:care_4u_m3hadtqani/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textbutton: "اللغة العربية",
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonLang(
              textbutton: "English",
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onBoarding);
              },
            )
          ],
        ),
      ),
    );
  }
}

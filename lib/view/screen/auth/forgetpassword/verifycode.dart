import 'package:care_4u_m3hadtqani/controller/forgetpassword/verifycode_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/custombodytext.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtitletext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VeriFyCode extends StatelessWidget {
  const VeriFyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VeriFyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomTextAppBarAuth(
              text: "42".tr,
            )),
        body: GetBuilder<VeriFyCodeControllerImp>(
          builder: (controller) => HandleDataReequset(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 37),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    CustomTextTitleAuth(
                      text: "40".tr,
                    ),
                    const SizedBox(height: 25),
                    CustomTextBodyAuth(text: "41".tr),
                    const SizedBox(
                      height: 30,
                    ),
                    OtpTextField(
                      cursorColor: const Color.fromARGB(255, 42, 1, 1),
                      fieldWidth: 59,
                      borderRadius: BorderRadius.circular(20),
                      borderWidth: 3,
                      numberOfFields: 5,
                      borderColor: AppColor.primaryColor,
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        controller.goToResetPassWord(verificationCode);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )),
        ));
  }
}

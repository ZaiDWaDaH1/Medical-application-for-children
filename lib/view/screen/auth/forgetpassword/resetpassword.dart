import 'package:care_4u_m3hadtqani/controller/forgetpassword/resetpassword_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/functions/validinput.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customButtomAuth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/custombodytext.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtextformfild.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtitletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassWord extends StatelessWidget {
  const ResetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPassWordControllerImp());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomTextAppBarAuth(
              text: "43".tr,
            )),
        body: GetBuilder<ResetPassWordControllerImp>(
          builder: (controller) => HandleDataReequset(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 37),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 90,
                      ),
                      CustomTextTitleAuth(
                        text: "35".tr,
                      ),
                      const SizedBox(height: 25),
                      CustomTextBodyAuth(
                        text: "34".tr,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validinput(val!, 8, 30, "password");
                        },
                        mycontroller: controller.repassword,
                        hinttext: "13".tr,
                        labletext: "19".tr,
                        iconData: Icons.lock_outline,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validinput(val!, 8, 30, "password2");
                        },
                        mycontroller: controller.password,
                        hinttext: "44".tr,
                        labletext: "45".tr,
                        iconData: Icons.lock_outline,
                      ),
                      CustomButtomAuth(
                        text: '33'.tr,
                        onPressed: () {
                          controller.resetpass();
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}

import 'package:care_4u_m3hadtqani/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/functions/validinput.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customButtomAuth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/custombodytext.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtextformfild.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtitletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPassWordControllerImp());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomTextAppBarAuth(
              text: "39".tr,
            )),
        body: GetBuilder<ForgetPassWordControllerImp>(
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
                        height: 30,
                      ),
                      CustomTextTitleAuth(
                        text: "27".tr,
                      ),
                      const SizedBox(height: 25),
                      CustomTextBodyAuth(
                        text: "29".tr,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextFormAuth(
                        isNumber: false,
                        valid: (val) {
                          return validinput(val!, 11, 100, "email");
                        },
                        mycontroller: controller.email,
                        hinttext: "12".tr,
                        labletext: "18".tr,
                        iconData: Icons.email_outlined,
                      ),
                      CustomButtomAuth(
                        text: '30'.tr,
                        onPressed: () {
                          controller.checkemail();
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

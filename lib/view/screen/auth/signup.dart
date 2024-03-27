import 'package:care_4u_m3hadtqani/controller/auth/signup_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/functions/alertexitapp.dart';
import 'package:care_4u_m3hadtqani/core/functions/validinput.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customButtomAuth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customappbarath.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/custombodytext.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtextformfild.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/customtitletext.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/logoauth.dart';
import 'package:care_4u_m3hadtqani/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomTextAppBarAuth(
              text: "26".tr,
            )),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) => HandleDataReequset(
                statusRequest: controller.statusRequest,
                widget: WillPopScope(
                  onWillPop: alertexitapp,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 37),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const LogoAuthSignUp(),
                          CustomTextTitleAuth(
                            text: "10".tr,
                          ),
                          const SizedBox(height: 25),
                          CustomTextBodyAuth(
                            text: "24".tr,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validinput(val!, 5, 20, "username");
                            },
                            mycontroller: controller.username,
                            hinttext: "23".tr,
                            labletext: "20".tr,
                            iconData: Icons.person_outlined,
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
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validinput(val!, 8, 30, "password");
                            },
                            mycontroller: controller.password,
                            hinttext: "13".tr,
                            labletext: "19".tr,
                            iconData: Icons.lock_outline,
                          ),
                          CustomTextFormAuth(
                            isNumber: true,
                            valid: (val) {
                              return validinput(val!, 10, 20, "phone");
                            },
                            mycontroller: controller.phoneNumper,
                            hinttext: "22".tr,
                            labletext: "21".tr,
                            iconData: Icons.phone_android_outlined,
                          ),
                          CustomTextFormAuth(
                            isNumber: true,
                            valid: (val) {
                              return validinput(val!, 2, 2, "phone3");
                            },
                            mycontroller: controller.age,
                            hinttext: "98".tr,
                            labletext: "100".tr,
                            iconData: Icons.face_sharp,
                          ),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validinput(val!, 5, 40, "password");
                            },
                            mycontroller: controller.address,
                            hinttext: "99".tr,
                            labletext: "101".tr,
                            iconData: Icons.map,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  '102'.tr,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 28,
                                ),
                                Text(
                                  '103'.tr,
                                  style: const TextStyle(fontSize: 22),
                                ),
                                Radio(
                                    value: 'Boy',
                                    groupValue: controller.sex,
                                    onChanged: (val) {
                                      setState(() {
                                        controller.sex = val;
                                      });
                                    }),
                                Radio(
                                    value: 'Girl',
                                    groupValue: controller.sex,
                                    onChanged: (val) {
                                      setState(() {
                                        controller.sex = val;
                                      });
                                    }),
                                Text(
                                  '104'.tr,
                                  style: const TextStyle(fontSize: 22),
                                )
                              ],
                            ),
                          ),
                          CustomButtomAuth(
                            text: '17'.tr,
                            onPressed: () {
                              controller.signup();
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextSingUpOrSignIn(
                            textone: "25".tr,
                            texttow: '15'.tr,
                            onTap: () {
                              controller.goToLogIn();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}

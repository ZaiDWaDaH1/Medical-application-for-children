import 'package:care_4u_m3hadtqani/controller/auth/login_controller.dart';
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

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: CustomTextAppBarAuth(
              text: "9".tr,
            )),
        body: GetBuilder<LoginControllerImp>(
          builder: (controller) => HandleDataReequset(
              statusRequest: controller.statusRequest,
              widget: WillPopScope(
                onWillPop: alertexitapp,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 37),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        const LogoAuth(),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextTitleAuth(
                          text: "47".tr,
                        ),
                        const SizedBox(height: 25),
                        CustomTextBodyAuth(text: "11".tr),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validinput(val!, 9, 100, "email");
                          },
                          mycontroller: controller.email,
                          hinttext: "12".tr,
                          labletext: "18".tr,
                          iconData: Icons.email_outlined,
                        ),
                        GetBuilder<LoginControllerImp>(
                            builder: (controller) => CustomTextFormAuth(
                                  onTapIcon: () {
                                    controller.showPassWord();
                                  },
                                  obscureText: controller.isShowPassWord,
                                  isNumber: false,
                                  valid: (val) {
                                    return validinput(val!, 8, 30, "password");
                                  },
                                  mycontroller: controller.password,
                                  hinttext: "13".tr,
                                  labletext: "19".tr,
                                  iconData: Icons.lock_outline,
                                )),
                        InkWell(
                          onTap: () {
                            controller.goToForgetPassWord();
                          },
                          child: Text(
                            "14".tr,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        CustomButtomAuth(
                          text: '15'.tr,
                          onPressed: () {
                            controller.login();
                            //Get.toNamed(AppRoute.homePage);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextSingUpOrSignIn(
                          textone: "16".tr,
                          texttow: "17".tr,
                          onTap: () {
                            controller.goToSignUp();
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ));
  }
}

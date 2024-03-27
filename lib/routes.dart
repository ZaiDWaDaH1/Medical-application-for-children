import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/middleware/mymiddleware.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/forgetpassword/success_ressetpassword.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/login.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/signup.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/success_signup.dart';
import 'package:care_4u_m3hadtqani/view/screen/auth/vreifycodesignup.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/3eadat/alraha.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/category_page.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/doctor/doctorses.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/home_page.dart';
import 'package:care_4u_m3hadtqani/view/screen/language.dart';
import 'package:care_4u_m3hadtqani/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  // Auth
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // // GetPage(name: "/", page: () => const TestView()),

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verFiyCode, page: () => const VeriFyCode()),
  GetPage(
      name: AppRoute.verFiyCodesSignUp, page: () => const VeriFyCodeSignUp()),
  GetPage(name: AppRoute.resetPassWord, page: () => const ResetPassWord()),
  GetPage(
      name: AppRoute.successResetPassWord,
      page: () => const SuccessResetPassWord()),
  GetPage(name: AppRoute.successSignUP, page: () => const SuccessSignUp()),
  // //onBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  // //HOME
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.aiadat, page: () => const Araha3eada()),
  GetPage(name: AppRoute.doctors, page: () => const DoctorPage1()),
  GetPage(name: AppRoute.catigories, page: () => const CategoryPage()),
];

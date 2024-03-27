import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/forgetpassword/verifycodeforgetpassword.dart';
import 'package:get/get.dart';

abstract class VeriFyCodeController extends GetxController {
  checkcode();
  goToResetPassWord(String verificationCode);
}

class VeriFyCodeControllerImp extends VeriFyCodeController {
  StatusRequest statusRequest = StatusRequest.none;
  String? email;
  VerifyCodeForgetPassWordData verifyCodeForgetPassWordData =
      VerifyCodeForgetPassWordData(Get.find());

  @override
  checkcode() {}

  @override
  goToResetPassWord(verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPassWordData.postData(email!, verificationCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoute.resetPassWord, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: 'Warning', middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/auth/vrefiycode.dart';
import 'package:get/get.dart';

abstract class VeriFyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSingUp(String verificationCode);
}

class VeriFyCodeSignUpControllerImp extends VeriFyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  String? email;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSingUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignUpData.postData(email!, verificationCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoute.successSignUP);
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
    email = Get.arguments['email'];
    super.onInit();
  }
}

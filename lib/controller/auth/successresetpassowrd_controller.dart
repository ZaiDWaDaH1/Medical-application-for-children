import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPassWordController extends GetxController {
  goToLogin();
}

class SuccessResetPassWordControllerImp extends SuccessResetPassWordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}

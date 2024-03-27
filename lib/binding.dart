import 'package:care_4u_m3hadtqani/controller/auth/signup_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
  }
}

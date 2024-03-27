import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/routes.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  clean();
  godoctors();
  goToaiadat(
    List categories,
    int aiadat,
  );
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  int? id;
  HomeData homeData = HomeData(Get.find());
  // List data = [];
  List categories = [];
  List images = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getInt("id");
  }

  @override
  clean() {
    myServices.sharedPreferences.clear();
  }

  @override
  void onInit() {
    getdata();
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToaiadat(categories, aiadat) {
    Get.toNamed(AppRoute.aiadat, arguments: {
      "categories": categories,
      "selectedaiad": aiadat,
    });
  }

  @override
  godoctors() {
    Get.offNamed(AppRoute.doctors);
  }
}

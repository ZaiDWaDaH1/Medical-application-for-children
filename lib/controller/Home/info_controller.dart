import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class InfoController extends GetxController {
  initialData();

  clean();
}

class InfoControllerImp extends InfoController {
  MyServices myServices = Get.find();

  String? username;
  String? address;
  int? age;
  String? sex;

  HomeData homeData = HomeData(Get.find());
  // List data = [];
  List categories = [];
  //List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    age = myServices.sharedPreferences.getInt("age");
    sex = myServices.sharedPreferences.getString("sex");
    address = myServices.sharedPreferences.getString("address");
  }

  @override
  clean() {
    myServices.sharedPreferences.clear();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}

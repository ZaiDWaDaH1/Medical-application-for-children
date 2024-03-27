// ignore_for_file: unused_element, no_leading_underscores_for_local_identifiers

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/aidat.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Aiadat extends GetxController {
  intlaData();
  getdata();
  phonenn(String phone);
  gotofacebooc(String faceboock);
}

class AiadatImb extends Aiadat {
  MyServices myServices = Get.find();

  String? username;
  int? id;
  AiadatData homeData = AiadatData(Get.find());

  late StatusRequest statusRequest;

  List categories = [];
  int? selectedaiad;
  List images = [];

  // final Uri _urll = Uri.parse(
  //     'https://www.facebook.com/profile.php?id=100065066623954&sk=about');

  @override
  intlaData() {
    categories = Get.arguments["categories"];
    selectedaiad = Get.arguments["selectedaiad"];
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        images.addAll(response['images']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getdata();
    intlaData();
    super.onInit();
  }

  @override
  phonenn(phone) {
    final Uri _url = Uri.parse('tel:+963 $phone');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    launchUrl(_url);
  }

  @override
  gotofacebooc(String faceboock) {
    final Uri _url = Uri.parse('$faceboock');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    launchUrl(_url);
  }
}

import 'package:care_4u_m3hadtqani/controller/Home/info_controller.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MEInfo extends StatefulWidget {
  const MEInfo({super.key});

  @override
  State<MEInfo> createState() => _MEInfoState();
}

class _MEInfoState extends State<MEInfo> {
  MyServices myServices = MyServices();
  @override
  Widget build(BuildContext context) {
    Get.put(InfoControllerImp());
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: Text(
          '48'.tr,
        ),
        centerTitle: true,
      ),
      body: GetBuilder<InfoControllerImp>(
        builder: ((controller) => Padding(
              padding: const EdgeInsets.only(left: 90.0, right: 90, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage(
                      'images/bba.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "105".tr,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        controller.username!,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "106".tr,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        "${controller.age!}",
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "107".tr,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        controller.sex!,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "108".tr,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Text(
                        controller.address!,
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

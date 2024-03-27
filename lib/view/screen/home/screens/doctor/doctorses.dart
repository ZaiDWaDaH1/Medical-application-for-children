import 'package:care_4u_m3hadtqani/controller/doctors.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorPage1 extends StatelessWidget {
  const DoctorPage1({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DoctrorscontImb());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 138, 255, 255),
          onPressed: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      backgroundColor: const Color.fromARGB(255, 33, 181, 195),
      body: GetBuilder<DoctrorscontImb>(
        builder: (controller) => HandleDataView(
          statusRequest: controller.statusRequest,
          widget: SafeArea(
            child: ListView.builder(
              itemCount: controller.doctordata.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 80.0, left: 80.0, top: 60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(800),
                      child: Image.network('${AppLink.iamgeCategories}'
                          '${controller.doctordata[index]['doctaor_image']}'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('${controller.doctordata[index]['doctaor_name']}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('${controller.doctordata[index]['doctaor_type']}',
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                      height: 20,
                      width: 200,
                      child: Divider(
                        color: Color.fromARGB(255, 173, 235, 246),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: const Icon(
                          Icons.facebook,
                          size: 35,
                          color: Color.fromARGB(255, 30, 195, 210),
                        ),
                        title: InkWell(
                          onTap: () {
                            controller.gotofacebooc(
                                "${controller.doctordata[index]['doctaor_facebook']}");
                          },
                          child: Text(
                            '${controller.doctordata[index]['doctaor_name']}',
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                      )),
                  Card(
                    margin: const EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.phone_android,
                          size: 35,
                          color: Color.fromARGB(255, 30, 195, 210),
                        ),
                        title: InkWell(
                          onTap: () {
                            controller.phonenn(
                                "${controller.doctordata[index]['doctaor_phone']}");
                          },
                          child: Text(
                            '${controller.doctordata[index]['doctaor_phone']}',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 20,
                      width: 2220,
                      child: Divider(
                        color: Color.fromARGB(255, 4, 57, 65),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

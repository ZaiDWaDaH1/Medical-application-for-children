import 'package:care_4u_m3hadtqani/controller/aiadat.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/constant/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Araha3eada extends StatelessWidget {
  const Araha3eada({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AiadatImb());
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
        title: const Text('العيادات'),
      ),
      body: GetBuilder<AiadatImb>(
        builder: (controller) => HandleDataView(
          statusRequest: controller.statusRequest,
          widget: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 21, 5, 3),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, 10),
                              spreadRadius: 2,
                              blurRadius: 20)
                        ]),
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.images.length,
                      itemBuilder: (context, index) {
                        return controller.selectedaiad == index
                            ? Image.network("${AppLink.iamgeCategories}"
                                "${controller.categories[index]['categories_image']}")
                            : Text(
                                '$index',
                                style: TextStyle(fontSize: 0),
                              );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.cyan),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller.categories.length,
                      itemBuilder: (context, index) {
                        return index == controller.selectedaiad
                            ? Column(
                                children: [
                                  Text(
                                    "${controller.categories[index]['categories_name']}",
                                    style: const TextStyle(
                                        fontSize: 26,
                                        color: Color.fromARGB(255, 34, 37, 37),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            : Text(
                                "$index",
                                style: const TextStyle(fontSize: 0),
                              );
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 27, 25, 25),
                          offset: Offset(0, 12),
                          blurRadius: 15)
                    ]),
                    child: Card(
                        color: const Color.fromARGB(255, 152, 235, 248),
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: const Icon(
                            Icons.facebook,
                            size: 35,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          title: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 145, 225, 237)),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: controller.categories.length,
                                itemBuilder: (context, index) {
                                  return index == controller.selectedaiad
                                      ? Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                controller.gotofacebooc(
                                                    controller.categories[index]
                                                        [
                                                        'categories_facebook']);
                                              },
                                              child: Text(
                                                "${controller.categories[index]['categories_name']}",
                                                style: const TextStyle(
                                                    fontSize: 26,
                                                    color: Color.fromARGB(
                                                        255, 34, 37, 37),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Text(
                                          "$index",
                                          style: const TextStyle(fontSize: 0),
                                        );
                                }),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 27, 25, 25),
                          offset: Offset(0, 12),
                          blurRadius: 15)
                    ]),
                    child: Card(
                        color: const Color.fromARGB(255, 152, 235, 248),
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: const Icon(
                            Icons.map,
                            size: 35,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          title: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 145, 225, 237)),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: controller.categories.length,
                                itemBuilder: (context, index) {
                                  return index == controller.selectedaiad
                                      ? Column(
                                          children: [
                                            Text(
                                              "${controller.categories[index]['categories_location']}",
                                              style: const TextStyle(
                                                  fontSize: 26,
                                                  color: Color.fromARGB(
                                                      255, 34, 37, 37),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      : Text(
                                          "$index",
                                          style: const TextStyle(fontSize: 0),
                                        );
                                }),
                          ),
                        )),
                  ),
                ),
                // categories_location
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 27, 25, 25),
                          offset: Offset(0, 12),
                          blurRadius: 15)
                    ]),
                    child: Card(
                      color: const Color.fromARGB(255, 152, 235, 248),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: const Icon(
                          Icons.phone,
                          size: 35,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        title: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 145, 225, 237)),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: controller.categories.length,
                            itemBuilder: (context, index) {
                              return index == controller.selectedaiad
                                  ? Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.phonenn(
                                                controller.categories[index]
                                                    ['categories_phone']);
                                          },
                                          child: Text(
                                            "${controller.categories[index]['categories_phone']}",
                                            style: const TextStyle(
                                                fontSize: 26,
                                                color: Color.fromARGB(
                                                    255, 34, 37, 37),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      "$index",
                                      style: const TextStyle(fontSize: 0),
                                    );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

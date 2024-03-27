import 'package:care_4u_m3hadtqani/view/screen/home/screens/doctor/hfian.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/doctor/zaid1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Us extends StatefulWidget {
  const Us({super.key});

  @override
  State<Us> createState() => _UsState();
}

class _UsState extends State<Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 255, 255),
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 138, 255, 255),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '87'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(60),
                        onTap: () {
                          Get.to(() => const Zaid1());
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/zaid.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Get.to(() => const Zaid1());
                        },
                        // _launchUrl,
                        child: Text(
                          "88".tr,
                          style: const TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const Hfian());
                        },
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('images/nour.jpg'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Get.to(() => const Hfian());
                        },
                        child: Text(
                          "89".tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/abd.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "90".tr,
                          style: const TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/ava.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "91".tr,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/ava.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "93".tr,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('images/ava.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "92".tr,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ]),
      ),
    );
  }
}

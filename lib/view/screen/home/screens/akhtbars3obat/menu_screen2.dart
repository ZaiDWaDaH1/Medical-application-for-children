import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/tatapq.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'home_screen2.dart';

class MenuScreen2 extends StatelessWidget {
  const MenuScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
        title: Text('82'.tr),
      ),
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 17,
                  bottom: 30,
                  left: 5,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Text(
                      '83'.tr,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen2(),
                    ),
                  );
                },
                child: LottieBuilder.asset('assets/lotie/f7s.json'),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 43, top: 43),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tatapq(),
                        ),
                      );
                    },
                    child: LottieBuilder.asset('assets/lotie/tatapq.json')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

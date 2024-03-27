import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/constantstow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'menu_screen2.dart';
import 'quiz_screen2.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeMainBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuScreen2(),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: LottieBuilder.asset('assets/lotie/test1.json'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 10, left: 30),
              child: Align(
                alignment: Alignment.topRight,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Text(
                    '82'.tr,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 25),
              child: Align(
                alignment: Alignment.topRight,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Text(
                    '84'.tr,
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(300, 40.0),
                elevation: 35,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen2(),
                  ),
                );
              },
              child: Text(
                '74'.tr,
                style: TextStyle(
                  color: welcomeMainBackground,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    Get.back();
                  },
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: LottieBuilder.asset('assets/lotie/test3.json')),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    '63'.tr,
                    textAlign: TextAlign.end,
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
                child: Text(
                  '73'.tr,
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.white,
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
                    builder: (context) => const QuizScreen(),
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

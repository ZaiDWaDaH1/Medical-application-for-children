// ignore_for_file: deprecated_member_use

import 'package:care_4u_m3hadtqani/view/screen/home/screens/category_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'constantstow.dart';
import 'menu_screen2.dart';

class ResultScreen2 extends StatelessWidget {
  final int resultAnswer;

  const ResultScreen2({super.key, required this.resultAnswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeMainBackground,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: welcomeMainBackground,
        title: Text(
          '111'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            resultPicture(),
            resultText(),
            Text(
              '$resultAnswer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: resultNumberColor()),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: const Size(300, 40.0),
                elevation: 11,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuScreen2(),
                  ),
                );
              },
              child: Text(
                '112'.tr,
                style: TextStyle(
                  color: welcomeMainBackground,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[300],
                  minimumSize: const Size(300, 40.0),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(79),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryPage(),
                    ),
                  );
                },
                child: Text(
                  "113".tr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color? resultNumberColor() {
    if (resultAnswer == 6) {
      return const Color.fromARGB(255, 17, 255, 0);
    } else if (resultAnswer < 6 && resultAnswer >= 2) {
      return Colors.yellowAccent;
    } else {
      return Colors.redAccent;
    }
  }

  Widget resultText() {
    if (resultAnswer == 6) {
      return Text(
        '114'.tr,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    } else if (resultAnswer < 6 && resultAnswer >= 2) {
      return Text(
        '115'.tr,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        "118".tr,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    }
  }

  Widget resultPicture() {
    if (resultAnswer == 6) {
      return LottieBuilder.asset(
        'assets/lotie/caree.json',
        height: 280,
      );
    } else if (resultAnswer < 6 && resultAnswer >= 2) {
      return LottieBuilder.asset(
        'assets/lotie/think.json',
        height: 280,
      );
    } else {
      return LottieBuilder.asset(
        'assets/lotie/bad.json',
        height: 280,
      );
    }
  }
}

import 'package:care_4u_m3hadtqani/view/screen/home/screens/category_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';
import 'menu_screen.dart';

class ResultScreen extends StatelessWidget {
  final int resultAnswer;

  const ResultScreen({super.key, required this.resultAnswer});

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
            Column(
              children: [
                Container(
                  width: double.infinity,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            resultPicture(),
            const SizedBox(
              height: 30,
            ),
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
                // ignore: deprecated_member_use
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
                    builder: (context) => const MenuScreen(),
                  ),
                );
              },
              child: Text(
                '112'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: welcomeMainBackground,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[300],
                  minimumSize: const Size(300, 40.0),
                  elevation: 3,
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
                  textAlign: TextAlign.center,
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
      return const Color.fromARGB(255, 0, 255, 81);
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
        '116'.tr,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[900],
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        '117'.tr,
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
        'assets/lotie/thnk.json',
        height: 300,
      );
    } else {
      return LottieBuilder.asset(
        'assets/lotie/bad.json',
        height: 280,
      );
    }
  }
}

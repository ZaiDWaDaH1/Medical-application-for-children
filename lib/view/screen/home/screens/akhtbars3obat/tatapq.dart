import 'dart:math';

import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/menu_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tatapq extends StatefulWidget {
  const Tatapq({super.key});

  @override
  State<Tatapq> createState() => _imagepageState();
}

// ignore: camel_case_types
class _imagepageState extends State<Tatapq> {
  int leftimagenumber = 1;
  int rightimagenumber = 2;
  void changimg() {
    leftimagenumber = Random().nextInt(8) + 1;
    rightimagenumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 20),
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
            height: 1,
          ),
          Text(
            leftimagenumber == rightimagenumber ? "86".tr : "85".tr,
            style: const TextStyle(fontSize: 42, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          changimg();
                        });
                      },
                      child: Image.asset("images/image-$leftimagenumber.png"))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          changimg();
                        });
                      },
                      child:
                          Image.asset("images/image-$rightimagenumber.png"))),
            ],
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}

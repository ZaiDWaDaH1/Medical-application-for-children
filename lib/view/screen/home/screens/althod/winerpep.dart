import 'package:care_4u_m3hadtqani/view/screen/home/screens/althod/infowin.dart/one.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/althod/infowin.dart/two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Winpepole extends StatefulWidget {
  const Winpepole({super.key});

  @override
  State<Winpepole> createState() => _WinpepoleState();
}

class _WinpepoleState extends State<Winpepole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 192, 215),
        title: Text(
          "65".tr,
          style: const TextStyle(fontSize: 23),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: const Color.fromARGB(255, 255, 254, 254),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ifo1(),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/alrbt.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 392,
                      width: 392,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '66'.tr,
                        style: const TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              splashColor: const Color.fromARGB(255, 255, 254, 254),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ifo2(),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/van.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 392,
                      width: 392,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '67'.tr,
                        style: const TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

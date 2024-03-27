import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class ifo1 extends StatelessWidget {
  const ifo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 192, 215),
        title: Text('66'.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/alrbt.jpg')),
            ),
            Text(
              '66'.tr,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "75".tr,
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("76".tr,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 30, color: Colors.black87)),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

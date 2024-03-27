import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class ifo2 extends StatelessWidget {
  const ifo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 192, 215),
        title: Text('67'.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('images/van.jpg')),
            ),
            Text(
              '67'.tr,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "77".tr,
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('78'.tr,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 30, color: Colors.black87)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('79'.tr,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 30, color: Colors.black87)),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

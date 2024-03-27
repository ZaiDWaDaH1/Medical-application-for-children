import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Greet extends StatelessWidget {
  const Greet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '{{ وَإِذَا مَرِضْتُ فَهُوَ يَشْفِيْنِ }} ',
        style: greetText.copyWith(fontFamily: 'Montserrat'),
      )
    ]);
  }
}

// ignore: camel_case_types
class aex extends StatelessWidget {
  const aex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '58'.tr,
        style: greetText,
      )
    ]);
  }
}

class Dctr extends StatelessWidget {
  const Dctr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '59'.tr,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, color: Colors.white),
      )
    ]);
  }
}

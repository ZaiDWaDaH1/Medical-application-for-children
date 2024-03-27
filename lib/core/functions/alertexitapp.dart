import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertexitapp() {
  Get.defaultDialog(title: "68".tr, middleText: "69".tr, actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("70".tr)),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("71".tr))
  ]);
  return Future.value(true);
}

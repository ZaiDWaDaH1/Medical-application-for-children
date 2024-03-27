// ignore_for_file: unused_element, no_leading_underscores_for_local_identifiers

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/functions/handlingdata.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/data/datasource/remote/qistion.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbAtohd/Question.dart';
import 'package:get/get.dart';

abstract class QQQQQQ extends GetxController {
  intlaData();
  getdata();
  // getOptionsItem(int x, xx, iff, lenff, endButton, correctAnswer);
}

class QQQQQQImb extends QQQQQQ {
  MyServices myServices = Get.find();

  String? username;
  int? id;

  QoustionData homeData = QoustionData(Get.find());

  late StatusRequest statusRequest;

  List oustion = [];
  List<Question>? getQuestionList(name, numm, crr) {
    var q1 = Question();
    q1.questionTitle = name;
    q1.imageNameNumber = numm;
    q1.correctAnswer = crr;
    q1.answerList = [
      '70'.tr,
      '71'.tr,
    ];
    return [q1];
  }

  @override
  intlaData() {}

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        oustion.addAll(response['question']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

//xx = selectedQuestion!.answerList![index]
//iff=selectedQuestion!.correctAnswer == index
//lennf== getQuestionList()!.length - 1
  @override
  // getOptionsItem(x, xx, iff, lenff, endButton, correctAnswer) {
  //   return ListTile(
  //     title: ClipRRect(
  //       borderRadius: BorderRadius.circular(8),
  //       child: Container(
  //         height: 40,
  //         width: 100,
  //         color: Colors.white,
  //         child: Center(
  //           child: Text(
  //             xx,
  //             textAlign: TextAlign.center,
  //             style: const TextStyle(
  //               color: Colors.amber,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //     onTap: () {
  //       if (iff) {
  //         correctAnswer++;
  //       } else {
  //         // ignore: avoid_print
  //         print('false');
  //       }

  //       () {
  //         if (x < lenff) {
  //           x++;
  //         } else {
  //           endButton = true;
  //         }
  //       };
  //     },
  //   );
  // }

  @override
  void onInit() {
    getdata();
    intlaData();
    super.onInit();
  }
}

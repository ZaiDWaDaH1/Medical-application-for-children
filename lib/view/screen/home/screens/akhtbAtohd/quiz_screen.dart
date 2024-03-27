// ignore_for_file: deprecated_member_use

import 'package:care_4u_m3hadtqani/controller/quostione_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Question.dart';
import 'constants.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int indexx = 0;

  Question? selectedQuestion;

  bool endButton = false;

  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()![indexx];

    String questionImageIndex = getQuestionList()![indexx].imageNameNumber!;

    String getQuestiosNumber =
        'سوال ${indexx + 1} من ${getQuestionList()!.length}';
    Get.put(QQQQQQImb());
    return Scaffold(
      backgroundColor: welcomeMainBackground,
      body: GetBuilder<QQQQQQImb>(
          builder: (controller) => HandleDataView(
                statusRequest: controller.statusRequest,
                widget: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18, top: 18),
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
                        Container(
                          width: double.infinity,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage(
                            'images/$questionImageIndex.png',
                          ),
                          height: 180,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18, left: 25),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              getQuestiosNumber,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          selectedQuestion!.questionTitle!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ...List.generate(
                          2,
                          (index) => getOptionsItem(index),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Visibility(
                          visible: endButton,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 9, 127, 134),
                              minimumSize: const Size(320, 40.0),
                              elevation: 35,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                    resultAnswer: correctAnswer,
                                  ),
                                ),
                              );
                            },
                            child: const Text(
                              'معرفة نتيجى الاختبار',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 40,
          width: 100,
          color: Colors.white,
          child: Center(
            child: Text(
              selectedQuestion!.answerList![index],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: welcomeMainBackground,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          // ignore: avoid_print
          print('false');
        }
        setState(
          () {
            if (indexx < getQuestionList()!.length - 1) {
              indexx++;
            } else {
              endButton = true;
            }
          },
        );
      },
    );
  }
}

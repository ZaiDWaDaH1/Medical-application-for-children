// ignore_for_file: deprecated_member_use, avoid_print

import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/constantstow.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/questiontow.dart';
import 'package:flutter/material.dart';

import 'home_screen2.dart';
import 'result_screen2.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({super.key});

  @override
  State<QuizScreen2> createState() => _QuizScreenState2();
}

class _QuizScreenState2 extends State<QuizScreen2> {
  int showenQuestionIndex = 0;

  Question2? selectedQuestion;

  bool endButton = false;

  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList2()![showenQuestionIndex];

    String questionImageIndex =
        getQuestionList2()![showenQuestionIndex].imageNameNumber!;

    String getQuestiosNumber =
        'سوال ${showenQuestionIndex + 1} من ${getQuestionList2()!.length}';

    return Scaffold(
      backgroundColor: welcomeMainBackground,
      body: SafeArea(
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen2(),
                        ),
                      );
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
                        builder: (context) => ResultScreen2(
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
          print('false');
        }
        setState(
          () {
            if (showenQuestionIndex < getQuestionList2()!.length - 1) {
              showenQuestionIndex++;
            } else {
              endButton = true;
            }
          },
        );
      },
    );
  }
}

import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbars3obat/menu_screen2.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/s3obat/m3lomat2.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hfo extends StatefulWidget {
  const Hfo({super.key});

  @override
  State<Hfo> createState() => _HfoState();
}

class _HfoState extends State<Hfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(
      //   currentIndex: 1,
      // ),
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      body: SafeArea(
          child: Column(
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
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              children: [
                Text(
                  '56'.tr,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 254, 254),
                    fontSize: 27.0,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              //how to use ListView.builder in this?
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const M3s3opat(),
                    ));
                  },
                  child: ExerciseTile(
                    exercise: '62'.tr,
                    subExercise: '55'.tr,
                    icon: Icons.book_rounded,
                    color: const Color.fromARGB(255, 6, 221, 217),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MenuScreen2(),
                    ));
                  },
                  child: ExerciseTile(
                    exercise: '80'.tr,
                    subExercise: '81'.tr,
                    icon: Icons.question_mark,
                    color: const Color.fromARGB(255, 4, 129, 63),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

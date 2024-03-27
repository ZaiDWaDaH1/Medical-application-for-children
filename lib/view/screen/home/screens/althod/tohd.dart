import 'package:care_4u_m3hadtqani/view/screen/home/screens/akhtbAtohd/menu_screen.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/althod/m3lomat.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/althod/winerpep.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Zaid extends StatefulWidget {
  const Zaid({super.key});

  @override
  State<Zaid> createState() => _ZaidState();
}

class _ZaidState extends State<Zaid> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '54'.tr,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 254, 254),
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold,
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
                      builder: (context) => const M3lomat(),
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
                      builder: (context) => const MenuScreen(),
                    ));
                  },
                  child: ExerciseTile(
                    exercise: '63'.tr,
                    subExercise: "64".tr,
                    icon: Icons.question_mark,
                    color: const Color.fromARGB(255, 4, 129, 63),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Winpepole(),
                    ));
                  },
                  child: ExerciseTile(
                    exercise: '65'.tr,
                    subExercise: "",
                    icon: Icons.person,
                    color: const Color.fromARGB(255, 127, 132, 162),
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

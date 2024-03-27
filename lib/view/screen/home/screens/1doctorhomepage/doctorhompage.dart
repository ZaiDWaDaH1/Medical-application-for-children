import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/1doctorhomepage/m3lomataldctor.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/us/us.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/bottom_sheet_header_title.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/exercise_tile.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/greet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Doctorhomepage extends StatefulWidget {
  const Doctorhomepage({super.key});

  @override
  State<Doctorhomepage> createState() => _DoctorhomepageState();
}

class _DoctorhomepageState extends State<Doctorhomepage> {
  MyServices myServices = MyServices();
  @override
  // ignore: override_on_non_overriding_member
  GlobalKey<ScaffoldState> kea = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: kea,
      endDrawer: Drawer(
        backgroundColor: Colors.cyan[600],
        child: Padding(
          padding:
              const EdgeInsets.only(left: 2, top: 22, bottom: 3, right: 12),
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text(
                      'حسابي',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const InfoDoctor1(),
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    title: const Text(
                      'من نحن',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.diversity_3,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Us(),
                      ));
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'تسجيل الخروج ',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    onTap: () {
                      myServices.sharedPreferences.clear();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Dctr(),
                      const SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: InkWell(
                            child: const Icon(
                              Icons.format_align_left_sharp,
                              color: Color.fromARGB(255, 22, 85, 116),
                              size: 30,
                            ),
                            onTap: () {
                              kea.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SizedBox(
                    height: 0.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        'assets/lotie/doctors.json',
                        height: 210,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'نهتم لاجلك',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 10, 34, 47),
                      blurRadius: 10,
                      //offset: Offset.infinite,
                    ),
                  ],
                  color: Color.fromARGB(255, 216, 241, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      35.0,
                    ),
                    topRight: Radius.circular(
                      35.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BottomSheetHeaderTitle(
                        titleText: 'الحجوزات والمواعيد',
                      ),
                      Expanded(
                        child: ListView(
                          //how to use ListView.builder in this?
                          children: const [
                            ExerciseTile2(
                                exercise2: 'الحجز الاول',
                                subExercise2: 'الموعد الاول',
                                icon2: Icons.bedroom_baby_outlined,
                                color2: Color.fromARGB(255, 126, 207, 120))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

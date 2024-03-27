import 'package:care_4u_m3hadtqani/controller/Home/homepage_controller.dart';
import 'package:care_4u_m3hadtqani/core/functions/alertexitapp.dart';
import 'package:care_4u_m3hadtqani/core/localization/changelocal.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/althod/tohd.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/category_page.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/s3obat/so3bat.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/shkawe/shkoow.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/us/aboutme.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/us/us.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/bottom_sheet_header_title.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/exercise_tile.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/greet.dart';
import 'package:care_4u_m3hadtqani/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyServices myServices = MyServices();
  GlobalKey<ScaffoldState> kyea = GlobalKey();
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    LocaleController controller1 = Get.put(LocaleController());
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: kyea,
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
                    title: Text(
                      '48'.tr,
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.child_care_sharp,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MEInfo(),
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    title: Text(
                      '49'.tr,
                      style: const TextStyle(fontSize: 22, color: Colors.black),
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
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      '50'.tr,
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.work,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TestMe(),
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ListTile(
                    title: Text(
                      '51'.tr,
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    onTap: () {
                      controller.clean();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "109".tr,
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomButtonLang1(
                        textbutton: "اللغة العربية",
                        onPressed: () {
                          controller1.changeLang("ar");
                          Get.back();
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomButtonLang1(
                        textbutton: "English",
                        onPressed: () {
                          controller1.changeLang("en");
                          Get.back();
                        },
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn2",
        backgroundColor: const Color.fromARGB(255, 60, 196, 208),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const CategoryPage(),
          ));
        },
        child: const Icon(Icons.medical_services),
      ),
      backgroundColor: const Color.fromARGB(255, 60, 196, 208),
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => WillPopScope(
          onWillPop: alertexitapp,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 2,
                          ),
                          const Greet(),
                          const SizedBox(
                            width: 20,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, top: 0),
                              child: InkWell(
                                child: const Icon(
                                  Icons.format_align_left_sharp,
                                  color: Color.fromARGB(255, 22, 85, 116),
                                  size: 40,
                                ),
                                onTap: () {
                                  kyea.currentState!.openEndDrawer();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LottieBuilder.asset(
                            'assets/lotie/care.json',
                            height: 300,
                          )
                          // Image.asset(
                          //   'assets/images/s.png',
                          //   height: 175,
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          '52'.tr,
                          style: const TextStyle(
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
                          BottomSheetHeaderTitle(
                            titleText: '53'.tr,
                          ),
                          Expanded(
                            child: ListView(
                              //how to use ListView.builder in this?
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Zaid()));
                                  },
                                  child: ExerciseTile(
                                    exercise: '54'.tr,
                                    subExercise: '55'.tr,
                                    icon: Icons.favorite,
                                    color:
                                        const Color.fromARGB(255, 6, 221, 217),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => const Hfo(),
                                    ));
                                  },
                                  child: ExerciseTile(
                                    exercise: '56'.tr,
                                    subExercise: '57'.tr,
                                    icon: Icons.book_rounded,
                                    color:
                                        const Color.fromARGB(255, 4, 129, 63),
                                  ),
                                ),
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
        ),
      ),
    );
  }
}

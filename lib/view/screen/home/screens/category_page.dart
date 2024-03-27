import 'package:care_4u_m3hadtqani/controller/Home/homepage_controller.dart';
import 'package:care_4u_m3hadtqani/core/class/handdataviwe.dart';
import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/screens/home_page.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/bottom_sheet_header_title.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/category_grid.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/exercise_tile.dart';
import 'package:care_4u_m3hadtqani/view/screen/home/widgets/greet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 60, 196, 208),
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) => HandleDataView(
                  statusRequest: controller.statusRequest,
                  widget: SafeArea(
                      child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18, top: 0),
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
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          16.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const aex(),
                            LottieBuilder.asset(
                              'assets/lotie/3eadat.json',
                              height: 200,
                            ),
                          ],
                        ),
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
                                  titleText: '60'.tr,
                                ),
                                Expanded(
                                  child: GridView.builder(
                                    itemCount: controller.categories.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          MaterialButton(
                                            onPressed: () {
                                              controller.goToaiadat(
                                                controller.categories,
                                                index,
                                              );
                                            },
                                            child: Container(
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: AppColor.primaryColor),
                                              child: CategoryGrid(
                                                category:
                                                    controller.categories[index]
                                                        ['categories_name'],
                                                color: AppColor.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                BottomSheetHeaderTitle(
                                  titleText: '61'.tr,
                                ),
                                Expanded(
                                  child: ListView(
                                    //how to use ListView.builder in this?
                                    children: [
                                      MaterialButton(
                                        onPressed: () {
                                          controller.godoctors();
                                        },
                                        child: const ExerciseTile(
                                          exercise: 'قائمة الاطباء',
                                          subExercise: "",
                                          icon: Icons.medical_services,
                                          color:
                                              Color.fromARGB(255, 55, 134, 58),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                )));
  }
}

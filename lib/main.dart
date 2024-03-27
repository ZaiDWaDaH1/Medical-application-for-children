import 'package:care_4u_m3hadtqani/binding.dart';
import 'package:care_4u_m3hadtqani/core/localization/changelocal.dart';
import 'package:care_4u_m3hadtqani/core/localization/translation.dart';
import 'package:care_4u_m3hadtqani/core/services/services.dart';
import 'package:care_4u_m3hadtqani/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Care 4U',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      getPages: routes,
      // home: DD(),
    );
  }
}

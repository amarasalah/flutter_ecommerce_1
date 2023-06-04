import 'package:ecommerce_flutter_1/core/constants/color.dart';
import 'package:ecommerce_flutter_1/core/localization/changelocal.dart';
import 'package:ecommerce_flutter_1/core/localization/translation.dart';
import 'package:ecommerce_flutter_1/core/services/services.dart';
import 'package:ecommerce_flutter_1/routes.dart';
import 'package:ecommerce_flutter_1/views/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: 'Tajawal',
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: AppColor.black),
          bodyLarge: TextStyle(height: 1.6, color: AppColor.grey, fontSize: 16),
        ),
        scaffoldBackgroundColor: AppColor.background,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}

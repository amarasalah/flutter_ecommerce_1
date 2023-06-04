import 'package:ecommerce_flutter_1/core/constants/approutes.dart';
import 'package:ecommerce_flutter_1/core/localization/changelocal.dart';
import 'package:ecommerce_flutter_1/views/widgets/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            CustomButtonlang(
              customButtonText: "2".tr,
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonlang(
              customButtonText: "3".tr,
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonlang(
              customButtonText: "4".tr,
              onPressed: () {
                controller.changeLang("fr");
                Get.toNamed(AppRoute.onBoarding);
              },
            )
          ],
        ),
      ),
    );
  }
}

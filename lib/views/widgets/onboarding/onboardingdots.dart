import 'package:ecommerce_flutter_1/constants/color.dart';
import 'package:ecommerce_flutter_1/controller/onboardingcontroller.dart';
import 'package:ecommerce_flutter_1/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotsOnboarding extends StatelessWidget {
  const CustomDotsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          curve: Curves.easeIn,
                          margin: const EdgeInsets.all(5),
                          width: controller.currentSlide == index ? 20 : 5,
                          duration: const Duration(milliseconds: 500),
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}

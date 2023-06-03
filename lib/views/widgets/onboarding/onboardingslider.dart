import 'package:ecommerce_flutter_1/constants/color.dart';
import 'package:ecommerce_flutter_1/controller/onboardingcontroller.dart';
import 'package:ecommerce_flutter_1/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            onBoardingList[i].image!,
            width: 220,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 70),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 1.6, color: AppColor.grey, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

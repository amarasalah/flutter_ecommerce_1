import 'package:ecommerce_flutter_1/core/constants/color.dart';
import 'package:ecommerce_flutter_1/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 50,
      width: 200,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () => {controller.next()},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: const Text("Continue"),
      ),
    );
  }
}

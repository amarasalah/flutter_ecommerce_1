import 'package:ecommerce_flutter_1/controller/onboardingcontroller.dart';
import 'package:ecommerce_flutter_1/views/widgets/onboarding/onboardingbutton.dart';
import 'package:ecommerce_flutter_1/views/widgets/onboarding/onboardingdots.dart';
import 'package:ecommerce_flutter_1/views/widgets/onboarding/onboardingslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnboarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDotsOnboarding(),
                  Spacer(flex: 2),
                  CustomButtonOnboarding()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

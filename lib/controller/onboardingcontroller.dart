import 'package:ecommerce_flutter_1/constants/login.dart';
import 'package:ecommerce_flutter_1/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBordingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBordingController {
  late PageController pageController;

  int currentSlide = 0;

  @override
  next() {
    currentSlide++;

    if (currentSlide > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentSlide,
          duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
    }
  }

  @override
  onPageChanged(int index) {
    currentSlide = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}

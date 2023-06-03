import 'package:ecommerce_flutter_1/constants/color.dart';
import 'package:ecommerce_flutter_1/data/datasource/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Text(
                      onBoardingList[i].title!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      onBoardingList[i].image!,
                      width: 244,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 80),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

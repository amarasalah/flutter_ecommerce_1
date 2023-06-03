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
              flex: 3,
              child: PageView.builder(
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                          onBoardingList.length,
                          (index) => AnimatedContainer(
                                margin: const EdgeInsets.all(5),
                                duration: const Duration(microseconds: 900),
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                              ))
                    ],
                  ),
                  const Spacer(flex: 1),
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    height: 50,
                    width: 200,
                    child: MaterialButton(
                      color: AppColor.primaryColor,
                      textColor: Colors.white,
                      onPressed: () => {},
                      child: const Text("Continue"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_flutter_1/data/datasource/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView.builder(
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        Text(onBoardingList[i].title!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Image.asset(onBoardingList[i].image!),
                        Text(onBoardingList[i].body!),
                      ],
                    ))));
  }
}

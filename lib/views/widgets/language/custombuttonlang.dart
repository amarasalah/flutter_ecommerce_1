import 'package:ecommerce_flutter_1/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomButtonlang extends StatelessWidget {
  final String customButtonText;
  final Function()? onPressed;
  const CustomButtonlang(
      {super.key, required this.customButtonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        width: double.infinity,
        child: MaterialButton(
          onPressed: onPressed,
          color: AppColor.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Text(
            customButtonText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ));
  }
}

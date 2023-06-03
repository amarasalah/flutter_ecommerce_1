import 'package:ecommerce_flutter_1/constants/color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: const Text("Login", style: TextStyle(color: Colors.white))),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: const Text("This is Login"),
      ),
    );
  }
}

import 'package:ecommerce_flutter_1/core/constants/approutes.dart';
import 'package:ecommerce_flutter_1/views/screens/auth/login.dart';
import 'package:ecommerce_flutter_1/views/screens/language.dart';
import 'package:ecommerce_flutter_1/views/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.lang: (context) => const Language(),
  AppRoute.onBoarding: (context) => const OnBoarding()
};

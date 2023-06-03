import 'package:ecommerce_flutter_1/constants/login.dart';
import 'package:ecommerce_flutter_1/views/screens/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};

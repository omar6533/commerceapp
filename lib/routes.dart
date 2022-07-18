import 'package:commerceapp/core/constant/routes.dart';
import 'package:commerceapp/view/screen/auth/login.dart';
import 'package:commerceapp/view/screen/onboarding.dart';

import 'package:flutter/material.dart';

import 'view/screen/auth/singup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.signUp: (context) => const SignUP(),
};

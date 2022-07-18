import 'package:commerceapp/core/constant/color.dart';
import 'package:commerceapp/core/services/services.dart';
import 'package:commerceapp/view/screen/auth/login.dart';
import 'package:commerceapp/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:commerceapp/view/screen/onboarding.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //  translations: ,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
          bodyText1: TextStyle(
            height: 2,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          bodyText2: TextStyle(
            height: 2,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      home: const OnBoarding(),
    );
  }
}

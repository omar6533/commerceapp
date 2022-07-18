import 'package:commerceapp/controller/onboarding_controller.dart';
import 'package:commerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomBackButtonOnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, right: 5),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.prev();
          },
          color: AppColor.primaryColor,
          child: const Icon(Icons.arrow_back)),
    );
  }
}

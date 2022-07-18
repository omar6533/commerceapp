import 'package:commerceapp/controller/onboarding_controller.dart';
import 'package:commerceapp/view/widget/onboarding/custombackbutton.dart';
import 'package:commerceapp/view/widget/onboarding/custombutton.dart';
import 'package:commerceapp/view/widget/onboarding/customdotcontroller.dart';
import 'package:commerceapp/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const CustomDotControllerOnBoarding(),
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomBackButtonOnBoarding(),
                        CustomButtonOnBoarding(),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

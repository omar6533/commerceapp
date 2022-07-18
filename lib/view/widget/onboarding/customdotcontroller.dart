import 'package:commerceapp/controller/onboarding_controller.dart';
import 'package:commerceapp/core/constant/color.dart';
import 'package:commerceapp/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length - 1,
              (i) => InkWell(
                    onTap: () {
                      controller.pressedPage = i;
                      controller.onPressed(controller.pressedPage);
                    },
                    child: AnimatedContainer(
                      margin: EdgeInsets.only(right: 5),
                      duration: Duration(microseconds: 900),
                      width: controller.currentPage == i ? 15 : 6,
                      height: controller.currentPage == i ? 15 : 6,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ))
        ],
      ),
    );
  }
}

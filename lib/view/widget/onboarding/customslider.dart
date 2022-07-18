import 'package:commerceapp/controller/onboarding_controller.dart';
import 'package:commerceapp/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        itemCount: onBoardingList.length - 1,
        itemBuilder: ((context, i) => Column(
              children: [
                Text(
                  '${onBoardingList[i].title} ',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(onBoardingList[i].img!)),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  textAlign: TextAlign.center,
                  '${onBoardingList[i].body}',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            )));
  }
}

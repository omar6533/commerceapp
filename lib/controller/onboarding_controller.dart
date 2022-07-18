import 'package:commerceapp/core/constant/routes.dart';
import 'package:commerceapp/data/datasource/static.dart';
import 'package:commerceapp/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  prev();
  onPageChanged(int index);
  onPressed(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  int pressedPage = 0;
  late PageController pageController;
  @override
  next() {
    if (currentPage > 1) {
      Get.to(const Login());
    } else {
      currentPage++;
    }
    pageController.animateToPage(currentPage,
        duration: Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  onPressed(int index) {
    currentPage = index;
    pageController.animateToPage(currentPage,
        duration: Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  prev() {
    if (currentPage == 0) {
    } else {
      currentPage--;
    }
    pageController.animateToPage(currentPage,
        duration: Duration(microseconds: 900), curve: Curves.easeInOut);
  }
}

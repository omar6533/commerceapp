import 'package:commerceapp/view/screen/auth/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassController extends GetxController {
  forgetPassword();
  goToSignUP();
}

class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController email;
  @override
  forgetPassword() {}

  @override
  goToSignUP() {
    Get.to(const SignUP());
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}

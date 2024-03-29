import 'package:commerceapp/view/screen/auth/forgetpassword.dart';
import 'package:commerceapp/view/screen/auth/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUP();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {}

  @override
  goToSignUP() {
    Get.to(const SignUP());
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPass() {
    Get.to(ForgetPass());
  }
}

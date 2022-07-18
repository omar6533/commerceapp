import 'package:commerceapp/view/screen/auth/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SingUpController extends GetxController {
  login();
  goToSignUP();
}

class SingUpControllerImp extends SingUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
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
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}

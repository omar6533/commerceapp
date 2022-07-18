import 'package:commerceapp/view/screen/auth/singup.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUP();
}

class LoginControllerImp extends LoginController {
  @override
  login() {}

  @override
  goToSignUP() {
    Get.to(const SignUP());
  }
}

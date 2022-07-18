import 'package:commerceapp/controller/login_controller.dart';
import 'package:commerceapp/core/constant/color.dart';
import 'package:commerceapp/core/constant/imageasset.dart';
import 'package:commerceapp/view/widget/auth/customsignupsent.dart';
import 'package:commerceapp/view/screen/auth/customtextfromlog.dart';
import 'package:commerceapp/view/widget/auth/customTitle.dart';
import 'package:commerceapp/view/widget/auth/custombodylog.dart';
import 'package:commerceapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginControllerImp> {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.left,
            'Sign in',
            style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: AppColor.grey,
                ),
          )),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    ImageAsset.loginLogo,
                  )),
              const CustomTitleLog(
                text: 'Welcome Back',
              ),
              const CustomBodyLog(
                text:
                    'Sign in with your Email And Password \n Or continue with your Social Media',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFromLog(
                hinttext: 'Enter your email',
                label: 'Email',
                suffixIcon: Icons.email_outlined,
              ),
              const CustomTextFromLog(
                hinttext: 'Enter your password',
                label: 'Password',
                suffixIcon: Icons.lock_clock_outlined,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      // print('object');
                      // controller.goToSignUP();
                    },
                    child: const Text(
                      'forget password?',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              const CustomButtonLang(
                text: 'Sign in',
              ),
              CustomTextSingUpOrLogin(
                text: "don't have an account",
                text2: 'Sign up',
                onTap: () {
                  controller.goToSignUP();
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}

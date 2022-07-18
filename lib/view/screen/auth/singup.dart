import 'package:commerceapp/controller/singup_controller.dart';
import 'package:commerceapp/core/constant/color.dart';
import 'package:commerceapp/core/constant/imageasset.dart';
import 'package:commerceapp/view/screen/auth/forgotpassowrd.dart';
import 'package:commerceapp/view/screen/auth/login.dart';
import 'package:commerceapp/view/widget/auth/customsignupsent.dart';
import 'package:commerceapp/view/screen/auth/customtextfromlog.dart';
import 'package:commerceapp/view/widget/auth/customTitle.dart';
import 'package:commerceapp/view/widget/auth/custombodylog.dart';
import 'package:commerceapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUP extends StatelessWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SingUpControllerImp controller = Get.put(SingUpControllerImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.left,
            'Sign for',
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
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextFromLog(
                      hinttext: 'Enter your username',
                      label: 'username',
                      suffixIcon: Icons.person_add_alt_1_outlined,
                      myContrller: controller.username,
                    ),
                    CustomTextFromLog(
                      hinttext: 'Enter your email',
                      label: 'Email',
                      suffixIcon: Icons.email_outlined,
                      myContrller: controller.email,
                    ),
                    CustomTextFromLog(
                      hinttext: 'Enter your password',
                      label: 'Password',
                      suffixIcon: Icons.lock_clock_outlined,
                      myContrller: controller.password,
                    ),
                    CustomTextFromLog(
                      hinttext: 'Enter your phone',
                      label: 'phone',
                      suffixIcon: Icons.phone_outlined,
                      myContrller: controller.phone,
                    ),
                  ],
                ),
              ),
              const CustomButtonLang(
                text: 'Sign up',
              ),
              CustomTextSingUpOrLogin(
                text: 'have an account? ',
                text2: 'Sing in ',
                onTap: () {
                  Get.to(const Login());
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}

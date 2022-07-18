import 'package:commerceapp/controller/ForgetPass_controller.dart';
import 'package:commerceapp/core/constant/color.dart';
import 'package:commerceapp/view/screen/auth/customtextfromlog.dart';
import 'package:commerceapp/view/widget/auth/customTitle.dart';
import 'package:commerceapp/view/widget/auth/custombodylog.dart';
import 'package:commerceapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPass extends GetView<ForgetPassControllerImp> {
  const ForgetPass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ForgetPassControllerImp controller = Get.put(ForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.left,
            'Forget  Password',
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
              ListView(
                shrinkWrap: true,
                children: [
                  CustomTextFromLog(
                    hinttext: 'Enter your email',
                    label: 'Email',
                    suffixIcon: Icons.email_outlined,
                    myContrller: controller.email,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
              const CustomButtonLang(
                text: 'Check',
              ),
            ],
          ),
        )),
      ),
    );
  }
}

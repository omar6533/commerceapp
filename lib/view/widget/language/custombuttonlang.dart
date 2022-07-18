import 'package:commerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonLang({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {},
        color: AppColor.primaryColor,
        child: Text(
          text,
        ),
      ),
    );
  }
}

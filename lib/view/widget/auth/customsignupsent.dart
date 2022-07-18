import 'package:commerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSingUpOrLogin extends StatelessWidget {
  final text;
  final text2;
  final void Function()? onTap;

  const CustomTextSingUpOrLogin({
    Key? key,
    this.text,
    this.text2,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$text",
          style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            '$text2',
            style: const TextStyle(fontSize: 15, color: AppColor.primaryColor),
          ),
        )
      ],
    );
  }
}

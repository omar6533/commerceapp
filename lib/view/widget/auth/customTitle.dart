import 'package:commerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleLog extends StatelessWidget {
  final String text;
  const CustomTitleLog({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyText2
          ?.copyWith(color: AppColor.black),
    );
  }
}

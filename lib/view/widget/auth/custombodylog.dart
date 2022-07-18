import 'package:flutter/material.dart';

class CustomBodyLog extends StatelessWidget {
  final String text;
  const CustomBodyLog({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(fontSize: 13, height: 2),
      textAlign: TextAlign.center,
    );
  }
}

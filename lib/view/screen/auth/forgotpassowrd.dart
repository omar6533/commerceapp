import 'package:flutter/material.dart';

class ForgotPasswordLog extends StatelessWidget {
  const ForgotPasswordLog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          child: const Text(
            'forget password?',
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFromLog extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData suffixIcon;
  final TextEditingController myContrller;

  const CustomTextFromLog({
    Key? key,
    required this.hinttext,
    required this.label,
    required this.suffixIcon,
    required this.myContrller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            hintText: hinttext,
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(label)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(suffixIcon)),
      ),
    );
  }
}

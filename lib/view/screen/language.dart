import 'package:commerceapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Choose Language",
                style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 20),
            CustomButtonLang(
              text: 'Ar',
              onPressed: () {},
            ),
            CustomButtonLang(
              text: 'Eng',
              onPressed: () {},
            ),
          ]),
        ),
      )),
    );
  }
}

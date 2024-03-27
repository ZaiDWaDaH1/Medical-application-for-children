import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;
  const CustomTextBodyAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontSize: 17, fontWeight: FontWeight.w100),
      ),
    );
  }
}
//'Sign In With Your Email And Password OR Continue With Social Media',
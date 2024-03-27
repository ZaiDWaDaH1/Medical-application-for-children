import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextAppBarAuth extends StatelessWidget {
  final String text;
  const CustomTextAppBarAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(color: AppColor.grey, fontWeight: FontWeight.w600),
    );
  }
}
//Sign In
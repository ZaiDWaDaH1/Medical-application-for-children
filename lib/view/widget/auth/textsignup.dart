import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSingUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttow;
  final void Function() onTap;
  const CustomTextSingUpOrSignIn(
      {super.key,
      required this.textone,
      required this.texttow,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttow,
            style: const TextStyle(
                color: AppColor.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

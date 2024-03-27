import 'package:care_4u_m3hadtqani/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({super.key, required this.textbutton, this.onPressed});
  final String textbutton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        textColor: AppColor.background,
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style:
              const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Vina"),
        ),
      ),
    );
  }
}

class CustomButtonLang1 extends StatelessWidget {
  const CustomButtonLang1(
      {super.key, required this.textbutton, this.onPressed});
  final String textbutton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        textColor: AppColor.background,
        color: const Color.fromARGB(255, 10, 44, 63),
        onPressed: onPressed,
        child: Text(
          textbutton,
          style:
              const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Vina"),
        ),
      ),
    );
  }
}

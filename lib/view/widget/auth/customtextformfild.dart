import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final void Function(String)? onChanged;

  const CustomTextFormAuth(
      {super.key,
      this.onTapIcon,
      required this.hinttext,
      required this.labletext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber,
      this.obscureText,
      this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 26),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle:
                const TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labletext)),
            suffixIcon: InkWell(
              borderRadius: BorderRadius.circular(45),
              onTap: onTapIcon,
              child: Icon(iconData),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

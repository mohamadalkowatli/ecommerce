import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myecommerce/core/constant/colors.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labeText;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final Void Function()? onTapIcon;

  const CustomTextFormAuth(
      {Key? key,
      this.onTapIcon,
      this.obscureText,
      required this.hintText,
      required this.labeText,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        validator: valid,
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labeText),
          ),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

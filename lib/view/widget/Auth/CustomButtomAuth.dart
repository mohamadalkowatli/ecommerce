import 'package:flutter/material.dart';
import 'package:myecommerce/core/constant/colors.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const CustomButtomAuth(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 20),
      child: MaterialButton(
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          color: AppColors.primaryColor,
          textColor: Colors.white,
          child: Text(text)),
    );
  }
}

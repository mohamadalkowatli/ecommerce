import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomLanguageButton extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomLanguageButton(
      {Key? key, required this.textButton, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      width: double.infinity,
      child: MaterialButton(
        padding: const EdgeInsets.all(8),
        onPressed: onPressed,
        color: AppColors.primaryColor,
        child: Text(
          textButton,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

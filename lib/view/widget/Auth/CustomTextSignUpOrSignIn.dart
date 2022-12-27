import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String text;
  final String signUpOrSignIn;
  final void Function()? onTap;

  const CustomTextSignUpOrSignIn(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.signUpOrSignIn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        InkWell(
          onTap: onTap,
          child: Text(
            signUpOrSignIn,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

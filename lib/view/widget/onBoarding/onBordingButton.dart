import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/onBoardingController.dart';
import 'package:myecommerce/core/constant/colors.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: const EdgeInsets.all(30),
      width: double.infinity,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onPressed: () {
          controller.next();
        },
        height: 50,
        color: AppColors.primaryColor,
        child: Text(
          "ContinueButton".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/onBoardingController.dart';
import '../../../core/constant/colors.dart';
import '../../../data/dataSource/static/static.dart';

class CustomMediaOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomMediaOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.onBoardingTitleColor),
          ),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 250,
            fit: BoxFit.fill,
          ),
          Text(
            onBoardingList[i].body!,
            style: TextStyle(
                fontSize: 14,
                height: 2,
                color: AppColors.onBoardingBodyColor,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

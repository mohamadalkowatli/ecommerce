import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/dataSource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  MyServices myServices = Get.find();

  int currentPage = 0;
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onBoarding", "1");
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}

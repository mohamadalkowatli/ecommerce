import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBoarding") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/services/services.dart';

import '../constant/app_theme.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLanguage(String langcode) {
    Locale language = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.offAllNamed(AppRoutes.onBoarding);
    Get.updateLocale(language);
    appTheme = langcode == "en" ? themeEnglish : themeArabic;
    Get.changeTheme(appTheme);
    // Get.offAllNamed(AppRoutes.onBoarding);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "en") {
      Get.changeTheme(themeEnglish);
      language = const Locale("en");
    } else if (sharedPrefLang == "ar") {
      Get.changeTheme(themeArabic);
      language = const Locale("ar");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme =
          Get.deviceLocale!.languageCode == "en" ? themeEnglish : themeArabic;
    }

    super.onInit();
  }
}

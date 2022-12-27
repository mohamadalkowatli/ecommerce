import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myecommerce/view/widget/languageScreen/customLanguageButton.dart';

import '../core/constant/colors.dart';
import '../core/localization/changelocal.dart';

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ChooseLanguage".tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.onBoardingTitleColor),
            ),
            const SizedBox(height: 15),
            CustomLanguageButton(
              textButton: "Arabic",
              onPressed: () {
                controller.changeLanguage("ar");
              },
            ),
            CustomLanguageButton(
              textButton: "English",
              onPressed: () {
                controller.changeLanguage("en");
              },
            ),
          ],
        ),
      ),
    );
  }
}

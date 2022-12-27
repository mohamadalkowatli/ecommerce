import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/colors.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "ExitApp".tr,
    titleStyle: const TextStyle(fontWeight: FontWeight.bold),
    middleText: "DoYouWantToExitTheApp".tr,
    actions: [
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.backgroundcolor),
        ),
        onPressed: () {
          Get.back();
        },
        child: Text(
          "No".tr,
          style: const TextStyle(
            color: AppColors.primaryColor,
          ),
        ),
      ),
      ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.backgroundcolor)),
        onPressed: () {
          exit(0);
        },
        child: Text(
          "Yes".tr,
          style: const TextStyle(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    ],
  );
  return Future.value(true);
}

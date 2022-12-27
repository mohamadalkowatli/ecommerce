import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/Auth/checkBox_controller.dart';

import '../../../core/constant/colors.dart';

class CustomCheckBoxAuth extends StatelessWidget {
  // final CheckBoxContrllerImp checkBoxContrllerImp;
  final CheckBoxContrllerImp checkBoxContrllerImp = Get.find();

  CustomCheckBoxAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Checkbox(
                checkColor: AppColors.backgroundcolor,
                overlayColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryColor),
                fillColor:
                    MaterialStateProperty.all<Color>(AppColors.primaryColor),
                value: checkBoxContrllerImp.isShowPassword.value,
                onChanged: (val) {
                  checkBoxContrllerImp.showPassword();
                }),
            Text("ShowPassword".tr),
          ],
        ));
  }
}

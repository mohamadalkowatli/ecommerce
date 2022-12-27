import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/ForgetPassword/reset_password_controller.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/view/widget/Auth/CustomButtomAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextBodyAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';
import 'package:myecommerce/view/widget/Auth/customCheckBoxAuth.dart';
import 'package:myecommerce/view/widget/Auth/customTextFormAuth.dart';

import '../../../../controller/Auth/checkBox_controller.dart';
import '../../../../core/functions/valid_input.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckBoxContrllerImp checkBoxContrllerImp = Get.put(CheckBoxContrllerImp());

    ResetPasswordContorllerImp controllerImp =
        Get.put(ResetPasswordContorllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("ResetPassword".tr,
              style: TextStyle(color: AppColors.authAppbarColor)),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            color: AppColors.backgroundcolor,
            child: Form(
              key: controllerImp.formState,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextTitleAuth(
                    text: "NewPassword".tr,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextBodyAuth(text: "resetPasswordTitle".tr),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 5, 15, "password");
                    },
                    obscureText: true,
                    hintText: "EnterYourPassword".tr,
                    labeText: "Password".tr,
                    iconData: Icons.lock_outlined,
                    mycontroller: controllerImp.password,
                    isNumber: false,
                  ),
                  Obx(
                    () => CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 5, 15, "password");
                      },
                      obscureText: !checkBoxContrllerImp.isShowPassword.value,
                      hintText: "EnterYourPassword".tr,
                      labeText: "Password".tr,
                      iconData: Icons.lock_outlined,
                      mycontroller: controllerImp.rePassword,
                      isNumber: false,
                    ),
                  ),
                  CustomCheckBoxAuth(),
                  CustomButtomAuth(
                      text: "Save".tr,
                      onPressed: () {
                        controllerImp.resetPassword();
                      }),
                ],
              ),
            )));
  }
}

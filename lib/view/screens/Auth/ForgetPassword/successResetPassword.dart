import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/view/widget/Auth/CustomButtomAuth.dart';

import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';

import '../../../../controller/Auth/Success_SginUp_Controller.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSginUpContollerImp controllerImp =
        Get.put(SuccessSginUpContollerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
          // title: const Text("Success Reset Password",
          //     style: TextStyle(color: AppColors.onBoardingTitleColor)),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            color: AppColors.backgroundcolor,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                CustomTextTitleAuth(
                  text: "PasswordHasBeenResetSuccessfully".tr,
                ),
                const SizedBox(
                  height: 100,
                ),
                const Icon(
                  Icons.check_circle_outline_sharp,
                  size: 150,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  child: CustomButtomAuth(
                      text: "GoToLogin".tr,
                      onPressed: () {
                        controllerImp.goToLogin();
                      }),
                )
              ],
            )));
  }
}

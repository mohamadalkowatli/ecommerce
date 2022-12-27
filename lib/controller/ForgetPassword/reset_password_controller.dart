import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';

import '../../core/functions/handiling_data_controller.dart';
import '../../data/dataSource/remote/ForgetPassword/resetPasswordData.dart';

abstract class ResetPasswordController extends GetxController {
  goTosuccessResetPassword();
  resetPassword();
  verifyPassword();
}

class ResetPasswordContorllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController rePassword;
  late String email;
  late String finalPassword;
  StatusRequest? statusRequest;
  RestPasswordData restPasswordData = RestPasswordData(Get.find());

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();

    super.dispose();
  }

  @override
  goTosuccessResetPassword() {
    Get.toNamed(AppRoutes.successResetPassword);
  }

  @override
  resetPassword() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
      verifyPassword();
      await postData();
      goTosuccessResetPassword();
    } else {
      print("NOT Valid");
    }
  }

  @override
  verifyPassword() {
    if (password.text == rePassword.text) {
      finalPassword = password.text;
    } else {
      Get.defaultDialog(
          title: "warring", middleText: "you must enter matching password");
    }
  }

  postData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await restPasswordData.fetchData(email, finalPassword);
    statusRequest = handilingData(response);
    print("-----controller $response");
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        goTosuccessResetPassword();
      } else {
        Get.defaultDialog(title: "warring", middleText: "Error");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}

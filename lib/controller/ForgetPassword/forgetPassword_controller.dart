import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/data/dataSource/remote/ForgetPassword/checkEmailData.dart';

import '../../core/functions/handiling_data_controller.dart';

abstract class ForgetPasswordController extends GetxController {
  goToVerfiyCode();
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;
  StatusRequest? statusRequest;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

  @override
  goToVerfiyCode() {
    Get.toNamed(AppRoutes.verfiyCode, arguments: {"email": email.text});
  }

  @override
  checkEmail() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");

      await postData();
    } else {
      print("NOT Valid");
    }
  }

  postData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await checkEmailData.fetchData(email.text);
    statusRequest = handilingData(response);
    print("-----controller $response");
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        goToVerfiyCode();
      } else {
        Get.defaultDialog(title: "warring", middleText: "the email is't exist");
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }
}

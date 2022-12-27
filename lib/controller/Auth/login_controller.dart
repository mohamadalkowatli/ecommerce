import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/functions/checkInternet.dart';
import 'package:myecommerce/data/dataSource/remote/Auth/loginData.dart';

import '../../core/functions/handiling_data_controller.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  var internetStatus;
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find());

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

  initData() async {
    internetStatus = await checkInternet();
    print("internet $internetStatus");
  }

  @override
  void onInit() {
    initData();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
      await fetchData();
    } else {
      print("not Valid");
    }
  }

  fetchData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await loginData.fetchData(
      password.text,
      email.text,
    );
    statusRequest = handilingData(response);
    print("-----controller $response");
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        print("success conrtpller");
        Get.offAllNamed(AppRoutes.home);
      } else if (response['message'] == "the password is't correct") {
        Get.defaultDialog(
            title: "warring", middleText: "the password is't correct");
        statusRequest = StatusRequest.failure;
      } else {
        Get.defaultDialog(
            title: "warring", middleText: "your account is't exist");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}

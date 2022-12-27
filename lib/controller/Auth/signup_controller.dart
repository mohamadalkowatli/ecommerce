import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/functions/handiling_data_controller.dart';
import 'package:myecommerce/data/dataSource/remote/Auth/signUpData.dart';

abstract class SginUpController extends GetxController {
  sginUp();
  goToSginIn();
}

class SginUpControllerImp extends SginUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  StatusRequest? statusRequest;

  SignUpData signUpData = SignUpData(Get.find());

  @override
  goToSginIn() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  sginUp() async {
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
    var response = await signUpData.insertData(
        username.text, password.text, email.text, phone.text);
    statusRequest = handilingData(response);
    print("-----controller $response");
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        print("add data to database");
        Get.offAllNamed(AppRoutes.verfiyCodeSignUp,
            arguments: {"email": email.text});
      } else {
        Get.defaultDialog(
            title: "warring",
            middleText: "the email or phone is already exist");
        statusRequest = StatusRequest.dataExist;
      }
    }

    update();
  }
}

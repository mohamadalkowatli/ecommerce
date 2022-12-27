import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/functions/handiling_data_controller.dart';

import '../../data/dataSource/remote/Auth/verifyCodeSignUpData.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUP();
  checkCode();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;
  late String email;
  StatusRequest? statusRequest;
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  goToSuccessSignUP() async {
    await checkCode();
  }

  @override
  checkCode() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.postData(email, verifycode);
    statusRequest = handilingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.toNamed(AppRoutes.successSginUp);
      } else {
        Get.defaultDialog(
            title: "Error", middleText: "The verification code is't correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}

import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/data/dataSource/remote/ForgetPassword/verifyCodeData.dart';

import '../../core/functions/handiling_data_controller.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword();
  checkCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;
  late String email;
  StatusRequest? statusRequest;
  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find());

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  goToResetPassword() {
    Get.toNamed(AppRoutes.resetPassword, arguments: {"email": email});
  }

  @override
  checkCode() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.fetchData(email, verifycode);
    statusRequest = handilingData(response);
    print("-----controller $response");
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        goToResetPassword();
      } else {
        Get.defaultDialog(
            title: "warring", middleText: "the code is't correct");
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }
}

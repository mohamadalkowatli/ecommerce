import 'package:get/get.dart';
import 'package:myecommerce/core/constant/routes.dart';

abstract class SuccessSginUpContoller extends GetxController {
  goToLogin();
}

class SuccessSginUpContollerImp extends SuccessSginUpContoller {
  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }
}

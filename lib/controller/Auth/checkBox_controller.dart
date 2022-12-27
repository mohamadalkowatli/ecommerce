import 'package:get/get.dart';

abstract class CheckBoxContrller extends GetxController {}

class CheckBoxContrllerImp extends CheckBoxContrller {
  var isShowPassword = false.obs;

  showPassword() {
    isShowPassword.value = !isShowPassword.value;
    update();
    print(isShowPassword);
  }
}

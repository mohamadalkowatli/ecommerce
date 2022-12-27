import 'package:get/get.dart';
import 'package:myecommerce/core/class/requests_api.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Requests());
  }
}

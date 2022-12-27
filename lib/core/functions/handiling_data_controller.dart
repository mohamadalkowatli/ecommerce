import 'package:get/get.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';

handilingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}

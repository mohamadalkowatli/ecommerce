import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class TestData {
  Requests requests;

  TestData(this.requests);

  getData() async {
    var response = await requests.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}

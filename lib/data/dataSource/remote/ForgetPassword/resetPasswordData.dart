import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class RestPasswordData {
  Requests requests;

  RestPasswordData(this.requests);

  fetchData(String email, String password) async {
    var response = await requests.postData(
        AppLink.resetPassword, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}

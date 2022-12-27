import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class VerifyCodeData {
  Requests requests;

  VerifyCodeData(this.requests);

  fetchData(String email, String verifyCode) async {
    var response = await requests.postData(AppLink.verifycodeForgetPassword, {
      "email": email,
      "verifycode": verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}

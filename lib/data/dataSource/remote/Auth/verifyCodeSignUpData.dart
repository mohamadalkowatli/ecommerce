import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class VerifyCodeSignUpData {
  Requests requests;

  VerifyCodeSignUpData(this.requests);

  postData(String email, String verifycode) async {
    var response = await requests.postData(AppLink.verfiycodeSignUp, {
      "verifycode": verifycode,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}

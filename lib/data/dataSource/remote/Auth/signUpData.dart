import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class SignUpData {
  Requests requests;

  SignUpData(this.requests);

  insertData(
      String username, String password, String email, String phone) async {
    var response = await requests.postData(AppLink.signup, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}

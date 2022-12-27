import 'package:myecommerce/core/constant/linkapi.dart';
import '../../../../core/class/requests_api.dart';

class LoginData {
  Requests requests;

  LoginData(this.requests);

  fetchData(String password, String email) async {
    var response = await requests
        .postData(AppLink.login, {"email": email, "password": password});
    print("login data === $response");
    return response.fold((l) => l, (r) => r);
  }
}

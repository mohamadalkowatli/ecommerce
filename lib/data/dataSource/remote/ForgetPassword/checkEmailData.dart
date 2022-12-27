import 'package:myecommerce/core/class/requests_api.dart';
import 'package:myecommerce/core/constant/linkapi.dart';

class CheckEmailData {
  Requests requests;

  CheckEmailData(this.requests);

  fetchData(String email) async {
    var response = await requests.postData(AppLink.checkEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}

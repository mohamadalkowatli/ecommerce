import 'dart:io';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print("checkinternet : success");
      return true;
    }
  } on SocketException catch (_) {
    print("checkinternet : failuer");
    return false;
  }
}

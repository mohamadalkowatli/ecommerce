import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:myecommerce/core/functions/checkInternet.dart';
import 'StatusRequest.dart';
import 'package:http/http.dart' as http;

class Requests {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverfailuer);
      }
    } else {
      return const Left(StatusRequest.offlinefailuer);
    }
  }
}

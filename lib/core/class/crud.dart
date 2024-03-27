import 'dart:convert';

import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      //  if (await checkInternet()) {
      await Future.delayed(const Duration(seconds: 3));
      var response = await http.post(Uri.parse(linkurl), body: data);
      if (response.statusCode == 200) {
        Map responsebody = jsonDecode(response.body);
        // ignore: avoid_print
        print(responsebody);
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
      // } else {
      //   return const Left(StatusRequest.offlinefailure);
      // }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}

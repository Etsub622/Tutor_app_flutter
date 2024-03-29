import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/util.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onsuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onsuccess();
      break;

    case 400:
      showSnackBar(context, jsonDecode(response.body)['msg']);
      break;

    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      break;

    default:
      showSnackBar(context, response.body);
  }
}

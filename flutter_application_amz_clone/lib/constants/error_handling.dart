import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_amz_clone/constants/utils.dart';
import 'package:http/http.dart' as http;

void httpResponseHandle(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      showSnackBar(context, 'Data Persisted Sucessfully');
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

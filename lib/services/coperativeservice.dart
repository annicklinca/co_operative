import 'dart:convert';

import 'package:co_operative/api/apicall.dart';
import 'package:co_operative/models/allcoperative.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoperativeServices {
  static Future<List<AllcoperativeModel>> getAllCoperative() async {
    SharedPreferences kubika = await SharedPreferences.getInstance();

    var response = await CallApi().getData('/register/');
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return coperativeFromJson(data);
    }
    return [];
  }
}

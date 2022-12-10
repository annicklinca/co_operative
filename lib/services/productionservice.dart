import 'dart:convert';

import 'package:co_operative/api/apicall.dart';
import 'package:co_operative/models/allproduction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductuctionServices {
  static Future<List<AllproductionModel>> getAllProduction() async {
    SharedPreferences kubika = await SharedPreferences.getInstance();

    var response = await CallApi().getData('/production/');
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return productionFromJson(data);
    }
    return [];
  }
}

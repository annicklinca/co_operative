import 'dart:convert';

import 'package:co_operative/api/apicall.dart';
import 'package:co_operative/models/allproduct.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductServices {
  static Future<List<AllproductModel>> getAllProduct() async {
    SharedPreferences kubika = await SharedPreferences.getInstance();

    var response = await CallApi().getData('/product/');
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return productFromJson(data);
    }
    return [];
  }
}

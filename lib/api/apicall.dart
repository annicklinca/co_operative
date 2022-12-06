import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CallApi {
  final url = 'http://localhost:8000/api';

  postData(data, apiUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var fullUrl = url + apiUrl;
    return await http.post(Uri.parse(fullUrl),
        body: json.encode(data),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Token $token'
        });
  }

  getData(apiUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var fullUrl = url + apiUrl;
    return await http.get(Uri.parse(fullUrl), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    });
  }
}

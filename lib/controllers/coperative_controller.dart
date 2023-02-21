import 'dart:convert';

import 'package:co_operative/models/allcoperative.dart';
import 'package:co_operative/services/coperativeservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/apicall.dart';

class CoperativeController extends GetxController {
  var loading = false.obs;
  var message = ''.obs;
  late TextEditingController conameController,
      addressController,
      phoneController;
  var allcoperative= <AllcoperativeModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    conameController = TextEditingController();
    addressController = TextEditingController();
    phoneController = TextEditingController();

    super.onInit();
    getAlloCoperative();
  }

  void addProduct() async {
    loading.value = true;

    var data = {
      'co_operativename': conameController.text,
      'address': addressController.text,
      'phone': phoneController.text
    };
    if (conameController.text.isEmpty || addressController.text.isEmpty) {
      message.value = 'please fill all fields';
      loading.value = false;
    } else {
      var response = await CallApi().postData(data, '/register/');

      var res = jsonDecode(response.body);
      print('Komer${response.body}');
      if (response.statusCode == 201) {
        loading.value = false;
        message.value = 'add coperative successfull';
        if (res['message'] == 'successful') {
          Get.snackbar(
            'Success',
            'You have successful added the coperative!',
            backgroundColor: const Color(0xff37C459),
          );
        } else {
          Get.snackbar(
            'Error',
            'Failed to add the coperative!',
            backgroundColor: const Color(0xff37C459),
          );
        }
      } else {
        loading.value = false;
        Get.snackbar(
          'Error',
          'Failed to add new coperative- check date format!',
          backgroundColor: const Color(0xff37C459),
        );
      }
    }
  }

  // get data
  void getAlloCoperative() async {
    var register = await CoperativeServices.getAllCoperative();
    if (register != null) {
      allcoperative.assignAll(register);
    }
  }
}

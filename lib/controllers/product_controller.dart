import 'dart:convert';

import 'package:co_operative/models/allproduction.dart';
import 'package:co_operative/services/productionservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/apicall.dart';

class ProductController extends GetxController {
  var loading = false.obs;
  var message = ''.obs;
  late TextEditingController conameController,
      addressController,
      quantityController,
      dateController;
  var allproduction = <AllproductionModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    conameController = TextEditingController();
    addressController = TextEditingController();
    quantityController = TextEditingController();
    dateController = TextEditingController();

    super.onInit();
    getAlloproduction();
  }

  void addProduct() async {
    loading.value = true;

    var data = {
      'cooperative_name': conameController.text,
      'address': quantityController.text,
      'quantity': quantityController.text,
      'date': dateController.text
    };
    if (conameController.text.isEmpty || quantityController.text.isEmpty) {
      message.value = 'please fill all fields';
      loading.value = false;
    } else {
      var response = await CallApi().postData(data, '/production/');

      var res = jsonDecode(response.body);
      print('Komer${response.body}');
      if (response.statusCode == 201) {
        loading.value = false;
        message.value = 'add production successfull';
        if (res['message'] == 'successful') {
          Get.snackbar(
            'Success',
            'You have successful added the production!',
            backgroundColor: const Color(0xff37C459),
          );
        } else {
          Get.snackbar(
            'Error',
            'Failed to add the production!',
            backgroundColor: const Color(0xff37C459),
          );
        }
      } else {
        loading.value = false;
        Get.snackbar(
          'Error',
          'Failed to add new production- check date format!',
          backgroundColor: const Color(0xff37C459),
        );
      }
    }
  }

  // get data
  void getAlloproduction() async {
    var production = await ProductuctionServices.getAllProduction();
    if (production != null) {
      allproduction.assignAll(production);
    }
  }
}

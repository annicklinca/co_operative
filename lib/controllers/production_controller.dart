import 'dart:convert';

import 'package:co_operative/models/allproduct.dart';
import 'package:co_operative/services/productservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/apicall.dart';

class ProductionController extends GetxController {
  var loading = false.obs;
  var message = ''.obs;
  late TextEditingController fishnameController,
      quantityController,
      dateController;
  var allproduct = <AllproductModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fishnameController = TextEditingController();
    quantityController = TextEditingController();
    dateController = TextEditingController();

    super.onInit();
    getAlloproduct();
  }

  void addProduct() async {
    loading.value = true;

    var data = {
      'fish_name': fishnameController.text,
      'quantity': quantityController.text,
      'date': dateController.text
    };
    if (fishnameController.text.isEmpty || quantityController.text.isEmpty) {
      message.value = 'please fill all fields';
      loading.value = false;
    } else {
      var response = await CallApi().postData(data, '/product/');

      var res = jsonDecode(response.body);
      print('Komer${response.body}');
      if (response.statusCode == 201) {
        loading.value = false;
        message.value = 'added product successful';
        if (res['message'] == 'successful') {
          Get.snackbar(
            'Success',
            'You have successful added a product!',
            backgroundColor: const Color(0xff37C459),
          );
        } else {
          Get.snackbar(
            'Error',
            'Failed to add the products!',
            backgroundColor: const Color(0xff37C459),
          );
        }
      } else {
        loading.value = false;
        Get.snackbar(
          'Error',
          'Failed to add new product- check date format!',
          backgroundColor: const Color(0xff37C459),
        );
      }
    }
  }

  // get data
  void getAlloproduct() async {
    var product = await ProductServices.getAllProduct();
    if (product != null) {
      allproduct.assignAll(product);
    }
  }
}

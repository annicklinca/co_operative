import 'dart:convert';
import 'package:co_operative/api/apicall.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  var loading = false.obs;
  var message = ''.obs;
  var alreadylogin = false.obs;
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    AlreadyLogin();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email address";
    }
    return null;
  }

  String? validatPassword(String value) {
    if (value.length <= 4) {
      return "Password must be greater than 4 character";
    }
    return null;
  }

  // ignore: non_constant_identifier_names
  void AlreadyLogin() async {
    SharedPreferences kubika = await SharedPreferences.getInstance();
    final email = kubika.getString('email');
    final userid = kubika.getString('userid');
    if (email != null && userid != null) {
      alreadylogin.value = true;
      print(email);
    }
  }

  void checkLogin() async {
    loading.value = true;

    var data = {
      'username': emailController.text,
      'password': passwordController.text,
    };
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      message.value = 'Email or password can not empty';
      loading.value = false;
    } else {
      var response = await CallApi().postData(data, '/login');

      var res = jsonDecode(response.body);
      print('Komer${response.body}');
      if (response.statusCode == 200) {
        message.value = 'Login success';
        if (res['email'] !='') {
          SharedPreferences kubika = await SharedPreferences.getInstance();
          //share the preferances =>
          kubika.setString('email', res['email']);
          kubika.setString('token', res['token']);
          Get.toNamed('home');
        }else{
           Get.snackbar(
          'Error',
          'username or password incorrect',
          backgroundColor: const Color(0xff37C459),
        );
        }

        loading.value = false;
      } else {
        loading.value = false;
        Get.snackbar(
          'Error',
          'Login failed',
          backgroundColor: const Color(0xff37C459),
        );
      }
    }
  }
}

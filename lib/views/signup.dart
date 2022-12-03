import 'package:co_operative/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _isObscure = true;
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 80, top: 140),
              child: Text(
                'Please Login Here',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          loginController.message.toString(),
                          style: const TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 35,
                        right: 35,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: loginController.emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.black,
                                labelText: "Username",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: loginController.passwordController,
                            obscureText: _isObscure,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.black,
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),

                                // this button is used to toggle the password visibility
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          loginController.loading.toString() == 'true'
                              ? const Text(
                                  'loading...',
                                  style: TextStyle(color: Colors.white),
                                )
                              : const Text(''),
                          Obx(() => loginController.loading.toString() == 'true'
                              ? Text(
                                  'signin please wait....',
                                  style: const TextStyle(color: Colors.white),
                                )
                              : Text(
                                  '',
                                  style: const TextStyle(color: Colors.white),
                                )),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              width: double.infinity,
                              decoration: BoxDecoration(color: Colors.blue),
                              child: TextButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () async {
                                  loginController.checkLogin();
                                },
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Do not have an account? Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 13),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'accounts');
                                  },
                                  child: const Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      fontSize: 13,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

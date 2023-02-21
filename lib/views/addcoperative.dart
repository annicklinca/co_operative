import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/coperative_controller.dart';

class AddCoperative extends StatefulWidget {
  const AddCoperative({Key? key}) : super(key: key);

  @override
  _CoperativeState createState() => _CoperativeState();
}

class _CoperativeState extends State<AddCoperative> {
  bool _isObscure = true;
  final coperativeController = Get.put(CoperativeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Production',
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 60, top: 80),
              child: Text(
                'Add Coperatives',
                style: TextStyle(
                    color: Color.fromARGB(255, 102, 126, 146),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 35,
                        right: 35,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: coperativeController.conameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                labelText: "Coperative name",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: coperativeController.addressController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: ' Address',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),

                              // this button is used to toggle the password visibility
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: coperativeController.phoneController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fillColor: Colors.black,
                              labelText: 'Phone',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),

                              // this button is used to toggle the password visibility
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                       
                          SizedBox(
                            height: 20,
                          ),
                          Obx(() => coperativeController.loading.toString() ==
                                  'true'
                              ? Text(
                                  'Adding please wait....',
                                  style: const TextStyle(color: Colors.white),
                                )
                              : Text(
                                  '',
                                  style: const TextStyle(color: Colors.white),
                                )),
                          Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text('Save'),
                                onPressed: () {
                                  coperativeController.addProduct();
                                },
                              )),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      
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

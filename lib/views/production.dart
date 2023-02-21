import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class MyProduction extends StatefulWidget {
  const MyProduction({Key? key}) : super(key: key);

  @override
  _MyProductionState createState() => _MyProductionState();
}

class _MyProductionState extends State<MyProduction> {
  bool _isObscure = true;
  final productController = Get.put(ProductController());
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
                'Add Production',
                style: TextStyle(
                    color: Colors.blue,
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
                            controller: productController.conameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                labelText: "Product name",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: productController.addressController,
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
                            controller: productController.quantityController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fillColor: Colors.black,
                              labelText: 'Production Quantity',
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
                            controller: productController.dateController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fillColor: Colors.white,
                              labelText: 'Date',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),

                              // this button is used to toggle the password visibility
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Obx(() => productController.loading.toString() ==
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
                                  productController.addProduct();
                                },
                              )),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black
                              ),
                              child: Text('All Production',
                              style: TextStyle(color: Colors.blue),),
                              onPressed: () {
                                Navigator.pushNamed(context, 'report');
                              },
                            )),
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

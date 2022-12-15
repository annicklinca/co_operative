import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/production_controller.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Products> {
  bool _isObscure = true;
  final productionController = Get.put(ProductionController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Products',
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
                'Add Product',
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
                            controller: productionController.fishnameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                labelText: "Fish name",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: productionController.quantityController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: ' Fish Quantity',
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
                            controller: productionController.dateController,
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
                          Obx(() => productionController.loading.toString() ==
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
                                  productionController.addProduct();
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
                              child: Text('Products In',
                              style: TextStyle(color: Colors.blue),),
                              onPressed: () {
                                Navigator.pushNamed(context, 'allproducts');
                              },
                            )),
                               SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black
                              ),
                              child: Text('View Analysis',
                              style: TextStyle(color: Colors.blue),),
                              onPressed: () {
                                Navigator.pushNamed(context, 'analyst');
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

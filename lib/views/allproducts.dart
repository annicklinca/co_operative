import 'package:co_operative/controllers/production_controller.dart';
import 'package:flutter/material.dart';
import 'package:co_operative/models/allproduct.dart';
import 'package:get/get.dart';

import '../models/allproduct.dart';

void main() => runApp(const Allproducts());

class Allproducts extends StatelessWidget {
  const Allproducts({Key? key}) : super(key: key);

  static const String _title = 'Co_operative';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductionController());
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'All Product',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Container(
            child: ListView.builder(
                itemCount: productController.allproduct.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.compare_arrows_outlined),
                      ),
                    ),
                    title: Text(
                      productController.allproduct[index].fish_name.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    subtitle: Text(
                      'Quantity: ${productController.allproduct[index].quantity}',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    
                  );
                })
                )
                
                
        // FutureBuilder<String>(
        //      // future: productController.allproduction,
        //      builder: (context, snapshot) {
        //        if (snapshot.hasData) {
        //          return  ListTile(
        //              leading: ExcludeSemantics(
        //                child: CircleAvatar(
        //                  backgroundColor: Colors.green,
        //                  child: Icon(Icons.compare_arrows_outlined),),
        //              ),
        //              title:
        //              Text('',
        //                style: TextStyle(color: Colors.white, fontSize: 15), ),
        //              subtitle: Text('',
        //                style: TextStyle(color: Colors.white, fontSize: 10), ),

        //            );
        //        } else if (snapshot.hasError) {
        //          return Text('${snapshot.error}');
        //        }

        //        // By default, show a loading spinner.
        //        return const CircularProgressIndicator();
        //      },
        //    ),
        );
  }
}

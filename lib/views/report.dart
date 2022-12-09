import 'package:co_operative/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:co_operative/models/allproduction.dart';
import 'package:get/get.dart';

import '../models/allproduction.dart';

void main() => runApp(const Repport());

class Repport extends StatelessWidget {
  const Repport({Key? key}) : super(key: key);

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
    final productController = Get.put(ProductController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('All Production', style: TextStyle(color: Colors.blue),),
 
      ),
      body:
      Scrollbar(
       child: FutureBuilder<AllproductionModel>(
            // future: productController.allproduction,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return  ListTile(
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.compare_arrows_outlined),),
                    ),
                    title:
                    Text('',
                      style: TextStyle(color: Colors.white, fontSize: 15), ),
                    subtitle: Text('',
                      style: TextStyle(color: Colors.white, fontSize: 10), ),

                  );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
      ),
    );
  }
}

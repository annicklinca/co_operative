
import 'package:co_operative/views/production.dart';
import 'package:co_operative/views/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Co_Operative', style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.black,
        ),
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 1,
              child: Container(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                child: const Text(
                        ' "Welcome to Fish_Production\n Please note that all co_operative productions are added by co_operatives leaders.\n\n\n Thank You!! ',
                        style: TextStyle(
                            fontSize: 17,color: Colors.blue),
                      )
                   ),
              )),
          const SizedBox(height: 40),
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                      padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProduction()));
                    // Get.to(nextView())
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                   child: 
                  Text(
                  'Record Production Data',
                ),
                ),
             
                        Container(
                            padding: const EdgeInsets.fromLTRB(10, 40, 0, 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue
                              ),
                              child: Text('Add Product',
                              style: TextStyle(color: Colors.white),),
                              onPressed: () {
                                Navigator.pushNamed(context, 'products');
                              },
                            )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

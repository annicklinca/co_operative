import 'dart:ui';

import 'package:flutter/material.dart';

class Analysispage extends StatefulWidget {
  const Analysispage({Key? key}) : super(key: key);

  @override
  _AnalysispageState createState() => _AnalysispageState();
}

class _AnalysispageState extends State<Analysispage> {
   bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/kenny.png'), fit: BoxFit.cover),
      // ),
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 120, top: 140),
              child: Text(
                'Hello!',
                style: TextStyle(color: Colors.blue, fontSize: 33),
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
                      margin: EdgeInsets.only(left: 75, right: 75, top:10),
                      child: Column(
                        children: const [
                          Text('Here is the final analysis of the production perfomed during this season.',
                          style: TextStyle(color: Colors.white, fontSize: 15 ),)
                        
                        ],
                      ),
                    ) 
                  ],
                ),
              ),
              
            ),
                Center(
                  child: Container(
                      //  padding: const EdgeInsets.fromLTRB(120, 0, 50, 10),
                       padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                      child: Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 50, 10),
                  child: Image.asset('../assets/charts.png',fit: BoxFit.cover,width: 400,height: 270,),
                      )),
                ),
                     
                    
          ],
        ),
      ),
   
    );
  }
}

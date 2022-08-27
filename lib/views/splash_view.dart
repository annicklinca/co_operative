import 'dart:async';

import 'package:co_operative/views/signup.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
                decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/kenny.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 120, top: 140),
              child: Text(
                'Fish_Production ',
                style: TextStyle(color: Colors.blue, fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
          ),
        ],
      ),
    );
  }
}

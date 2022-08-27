import 'package:co_operative/views/home.dart';
import 'package:co_operative/views/production.dart';
import 'package:co_operative/views/register.dart';
import 'package:co_operative/views/signup.dart';
import 'package:co_operative/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'signup': (context) => MyLogin(),
      'production': (context) => MyProduction(),
      'home': (context) => WelcomePage(),
      'splash': (context) => SplashScreen(),
  
    
    },
  ));
}

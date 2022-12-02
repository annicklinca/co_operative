import 'package:co_operative/views/accounts.dart';
import 'package:co_operative/views/analyst.dart';
import 'package:co_operative/views/home.dart';
import 'package:co_operative/views/production.dart';
import 'package:co_operative/views/products.dart';
import 'package:co_operative/views/register.dart';
import 'package:co_operative/views/report.dart';
import 'package:co_operative/views/signup.dart';
import 'package:co_operative/views/splash_view.dart';
import 'package:co_operative/views/user_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'signup': (context) => MyLogin(),
      'production': (context) => MyProduction(),
      'home': (context) => WelcomePage(),
      'report': (context) => Repport(),
      'accounts': (context) => CreateAccounts(),
      'products': (context) => Products(),
      'analyst': (context) => Analysispage(),
      'user_home': (context) => HomePage(),
      'splash': (context) => SplashScreen(),
  
    
    },
  ));
}

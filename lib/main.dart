
import 'package:flutter/material.dart';
import 'package:quickassist/login.dart';
import 'package:quickassist/welcome.dart';
 import 'package:quickassist/signup.dart';
import 'package:quickassist/otp.dart';
import 'package:quickassist/forgot.dart';
import 'package:quickassist/createp.dart';
import 'package:quickassist/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: 'forgot',
     routes:
      {
    '/': (context) => Welcome(),
      '/login': (context) => Login(),
      '/create_account': (context) => Signup(),
      '/otp': (context) => Otp(),
      '/createp': (context) => Createp(),
      '/home': (context) => Home(),


     },
      // {'login': (context) => Login()},
      //    {'welcome': (context) => Welcome()},
      // {'signup':(context) => Signup()}
      //  {'otp':(context) => Otp()}
      //  {'forgot':(context) => Forgot()}
      //  {'createp':(context) => Createp()}
  ));
}
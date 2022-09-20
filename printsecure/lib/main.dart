import 'package:flutter/material.dart';
import 'package:printsecure/screens/createAccountAs.dart';
import 'package:printsecure/screens/homePageForCustomer.dart';
import 'package:printsecure/screens/homePageForVendor.dart';
import 'package:printsecure/screens/logi_SignUp.dart';
import 'package:printsecure/screens/selectedImagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Print Secure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/o': (context) => loginScreen(),
        '/b': (context) => createAccountAs(),
        '/': (context) => homePageCustomer(),
        '/l': (context) => homePageVendor(),
        '/m': (context) => selectedImgPage(),
      },
    );
  }
}

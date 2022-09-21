import 'package:flutter/material.dart';
import 'package:printsecure/provider/google_sign_in.dart';
import 'package:printsecure/screens/createAccountAs.dart';
import 'package:printsecure/screens/homePageForCustomer.dart';
import 'package:printsecure/screens/homePageForVendor.dart';
import 'package:printsecure/screens/logi_SignUp.dart';
import 'package:printsecure/screens/selectedImagePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Print Secure',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => loginScreen(),
          '/o': (context) => createAccountAs(),
          '/i': (context) => homePageCustomer(),
          '/l': (context) => homePageVendor(),
          '/e': (context) => selectedImgPage(),
        },
      ),
    );
  }
}

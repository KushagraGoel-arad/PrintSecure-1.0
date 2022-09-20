import 'package:flutter/material.dart';
import 'package:printsecure/screens/appbar.dart';

class homePageVendor extends StatefulWidget {
  homePageVendor({Key? key}) : super(key: key);

  @override
  State<homePageVendor> createState() => _homePageVendorState();
}

class _homePageVendorState extends State<homePageVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17))),
        backgroundColor: Color.fromARGB(255, 96, 173, 235),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        ),
        title: Text(
          "Print\n Secure",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.qr_code_scanner,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
    );
  }
}

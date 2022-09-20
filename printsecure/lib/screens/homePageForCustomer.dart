import 'package:flutter/material.dart';
import 'package:printsecure/widgets/drawer.dart';

class homePageCustomer extends StatefulWidget {
  homePageCustomer({Key? key}) : super(key: key);

  @override
  State<homePageCustomer> createState() => _homePageCustomerState();
}

class _homePageCustomerState extends State<homePageCustomer> {
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
    
      body: Column(
        
        children: [
          Container(
            padding: EdgeInsets.all(6.0),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

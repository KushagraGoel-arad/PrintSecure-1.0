import 'package:flutter/material.dart';

class MyappBar extends StatefulWidget {
  MyappBar({Key? key}) : super(key: key);

  @override
  State<MyappBar> createState() => _MyappBarState();
}

class _MyappBarState extends State<MyappBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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

          // actions: <Widget>[
          //   CircleAvatar(
          //     child: ClipOval(
          //         //child: Image.asset(''),
          //         ),
          //   ),
          // ],
          // title: Text(
          //   "Print\n Secure",
          //   textAlign: TextAlign.center,
          // ),
          // centerTitle: true,
          // actions: <Widget>[
          //   IconButton(onPressed: () {}, icon: Icon(Icons.scanner)),
          //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class selectedImgPage extends StatefulWidget {
  selectedImgPage({Key? key}) : super(key: key);

  @override
  State<selectedImgPage> createState() => _selectedImgPageState();
}

class _selectedImgPageState extends State<selectedImgPage> {
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
            child: Center(
              child: Text(
                "Selected Image",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 100),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(24),
              //   topRight: Radius.circular(24),
              //   bottomLeft: Radius.circular(24),
              //   bottomRight: Radius.circular(24),
              // )
            ),
          ),
          ElevatedButton(
            child: Text('Generate Link'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

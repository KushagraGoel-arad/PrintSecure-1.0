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
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/login/Filemanager.png',
                      // alignment: Alignment.centerLeft,
                    ),
                    Text("File Manager"),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/login/gdrive 1.png',
                      //alignment: Alignment.center,
                    ),
                    Text("Google Drive"),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/login/gallary.png',
                      //alignment: Alignment.centerRight,
                    ),
                    Text("Gallery"),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.all(6.0),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
            height: 80,
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
          SizedBox(
            height: 50,
          ),
          Container(
            child: new GridView.count(
              crossAxisCount: 4,
              children: new List<Widget>.generate(16, (index) {
                return new GridTile(
                  child: new Card(
                      color: Color.fromARGB(255, 193, 191, 191),
                      child: new Center(
                        child: new Text('Image $index'),
                      )),
                );
              }),
            ),
            padding: EdgeInsets.all(6.0),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
            height: 355,
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
          SizedBox(
            height: 130,
          ),
          Row(
            children: [
              Text(
                "                                        secured by ",
                textAlign: TextAlign.center,
              ),
              Text(
                "Print Secure",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey),
              ),
            ],
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

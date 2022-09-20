import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final imageUrl = "https://avatarfiles.alphacoders.com/321/32154.gif";
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   padding: EdgeInsets.zero,
          //   child: UserAccountsDrawerHeader(
          //     margin: EdgeInsets.zero,
          //     decoration:
          //         BoxDecoration(color: Color.fromARGB(255, 73, 165, 76)),
          //     accountName: Text("Kushagra Goel"),
          //     accountEmail: Text("Kushagra.goel@gmail.com"),
          //     currentAccountPicture: CircleAvatar(
          //       backgroundImage: NetworkImage(imageUrl),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 40,
          ),
          Positioned(
            height: 100,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 217, 217, 215),
              maxRadius: 80,
            ),
          ),
          SizedBox(
            height: 40,
          ),

          Container(
            child: Column(
              children: [
                Text(
                  "Username",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Useremailid@gmail.com",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton.icon(
                    // child: Text(
                    //   'Change Password',
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.lightBlue),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.key,
                      color: Colors.black,
                      size: 24.0,
                    ),
                    label: Text(
                      'Change Password',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton.icon(
                    // child: Text(
                    //   'Change Password',
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.lightBlue),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.print,
                      color: Colors.black,
                      size: 24.0,
                    ),
                    label: Text(
                      'About PrintSecure',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Want to create QR code, create account as vendor",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset("assets/login/Rectangle 83.png"),
                Image.asset("assets/login/Rectangle 82.png"),
              ],
            ),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
            height: 270,
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
          // SizedBox(
          //   height: 0,
          // ),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(65, 25, 50, 60)),
              Center(
                child: ElevatedButton.icon(
                  // child: Text(
                  //   'Change Password',
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.lightBlue),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  label: Text(
                    'Logout',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),

          Row(
            children: [
              Text(
                "                          secured by ",
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
    );
  }
}

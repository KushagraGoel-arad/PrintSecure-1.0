import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 45),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/login/hacklogo1.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              'Print Secure',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                // color: const Color(#66BFBF),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Text(
              'privacy matters',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Color.fromARGB(255, 7, 78, 137),
                      height: 36,
                    )),
              ),
              Text("Log in or Sign up With"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Color.fromARGB(255, 7, 78, 137),
                      height: 36,
                    )),
              ),
            ]),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                size: 30,
                color: Color.fromARGB(255, 20, 77, 22),
              ),
              label: Text(''),
              style: ElevatedButton.styleFrom(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.only()),
                backgroundColor: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                size: 30,
                color: Color.fromARGB(255, 20, 77, 22),
              ),
              label: Text(''),
              style: ElevatedButton.styleFrom(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.only()),
                backgroundColor: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                size: 30,
                color: Color.fromARGB(255, 20, 77, 22),
              ),
              label: Text(''),
              style: ElevatedButton.styleFrom(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.only()),
                backgroundColor: Colors.white,
              ),
            ),

            //login buttons

            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      thickness: 1.0,
                      color: Color.fromARGB(255, 7, 78, 137),
                      height: 36,
                    )),
              ),
              Text("Copyright @ 2022"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      color: Color.fromARGB(255, 7, 78, 137),
                      height: 36,
                    )),
              ),
            ]),

            Image.asset(
              'assets/login/bottomCurve.png',
            ),
            // Divider(
            //   color: Colors.blue,
            // )
          ],
        )),
      ),
    );
  }
}

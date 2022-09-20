import 'package:flutter/material.dart';

class createAccountAs extends StatefulWidget {
  createAccountAs({Key? key}) : super(key: key);

  @override
  State<createAccountAs> createState() => _createAccountAsState();
}

class _createAccountAsState extends State<createAccountAs> {
  int _value = 1;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 45),
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/login/hacklogo1.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome $name,',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // color: const Color(#66BFBF),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'You have successfully logged in..',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            const Text(
              'Create Account as?',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),

            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Customer',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                SizedBox(
                  width: 30,
                ),
                Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vendor',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Color.fromARGB(255, 20, 77, 22),
                  ),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                        color: Color.fromARGB(255, 20, 77, 22), width: 5),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            Image.asset('assets/login/bottomCurve.png'),

            // Divider(
            //   color: Colors.blue,
            // )
          ],
        )),
      ),
    );
  }
}

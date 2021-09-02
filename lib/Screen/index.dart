import 'package:flutter/material.dart';
import 'package:mobileappweek1/Config/constant.dart';


class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -15,
              left: -20,
              child: Image.asset(
                "asset/image/circle.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "asset/image/LOGO.png",
                  width: size.width * 0.35,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                    color: SColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                   SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "asset/image/unname.png",
                  width: size.width * 0.9,
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    // padding: EdgeInsets.all(20),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                     Navigator.pushNamed(context, 'Login');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Register');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
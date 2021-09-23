import 'package:flutter/material.dart';
import 'package:mobileappweek1/Config/constant.dart';
import 'package:mobileappweek1/Screen/Login.dart';
import 'package:mobileappweek1/Screen/Register.dart';
import 'package:mobileappweek1/Screen/dashbord.dart';

import 'Screen/Home.dart';
import 'Screen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
          'Login' : (context) => Login(),
          'Register': (context) => Register(),
          'Dashboard': (context) => Dashboard(),

      },
      theme: ThemeData(
          primaryColor: primaryColor,
          secondaryHeaderColor: SColor,
      ),
    );
  }
}
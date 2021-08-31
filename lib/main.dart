import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'auth/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.teal[100],
        textTheme: TextTheme(
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal[100],
            padding: EdgeInsets.all(20),
            elevation: 50,
            shadowColor: Colors.teal[100],
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      routes: {
        'loginPage': (context) => Login(),
        'registerPage': (context) => Register(),
      },
    );
  }
}

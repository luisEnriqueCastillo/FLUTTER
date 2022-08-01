import 'package:flutter/material.dart';
import 'package:flutter_bbva/page/home_page.dart';
import 'package:flutter_bbva/page/splash_page.dart';
import 'package:flutter_bbva/page/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBVA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "splash",
      routes:{
        "splash": ( BuildContext context ) =>SplashPage(),
        "login" : ( BuildContext context ) =>LoginPage(),
        "home"  : ( BuildContext context ) =>HomePage()
      },


      //home: HomePage()
    );
  }
}

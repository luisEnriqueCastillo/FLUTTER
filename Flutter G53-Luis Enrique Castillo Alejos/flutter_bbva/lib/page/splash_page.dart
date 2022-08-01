import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bbva/page/login_page.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() =>  _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(0, 68, 129, 1.0),

      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.28,
            ),
            Expanded(
               
              //flex: 5,
              child: Column(
                children: [
                  Image(
                image: AssetImage("assets/images/splash/bbva_splash.png"),
                height: 120.0,
                ),

                SizedBox(height: 20.0,),

               CircularProgressIndicator(
                 valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
                ],
              )
            ),
            
          ],
        ),
      ),
    );
  }
}
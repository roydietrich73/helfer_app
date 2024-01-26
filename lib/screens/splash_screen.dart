import 'dart:async';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToAnmeldenScreen();
  }
   _navigateToAnmeldenScreen(){
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => AnmeldenScreen(),
          ),
    );
   });
  }
    
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Helfer-App',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24.0,
            fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}

AnmeldenScreen() async {
}
  


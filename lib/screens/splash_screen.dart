import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
    return Stack(
      alignment: Alignment.center,
        children: [
          Opacity(
              opacity: 0.3,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage('assets/hintergrund.png'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ),
               Container(
                width: 300,
                height: 300,
                decoration:const BoxDecoration(
                image: DecorationImage(
                image: AssetImage ("assets/Logo-Text.png"),
                  ),
                ),
              ),
      ],
    );
  }
}

AnmeldenScreen() async {
}
  


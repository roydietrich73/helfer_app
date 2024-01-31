import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:helfer_app/screens/anmelden_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToAnmeldenLoginScreen();
  }
   _navigateToAnmeldenLoginScreen(){
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => AnmeldenLoginScreen(),
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
              opacity: 0.2,
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
                decoration:const BoxDecoration(
                image: DecorationImage(
                image: AssetImage ("assets/images/Logo-Text.png"),
                  ),
                ),
              ),
      ],
    );
  }
}

AnmeldenLoginScreen() {
}


  


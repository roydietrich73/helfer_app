import 'dart:async';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/5/startseite/start_screen.dart';
//import 'package:helfer_app/features/authentification/presentation/anmelden_login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(
        -1.5,
        0.0,
      ),
      end: const Offset(
        0.0,
        0.0,
      ),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();

    Timer(const Duration(seconds: 3), () {
      // Navigation zu Desicion Page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const StartScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.2,
              image: AssetImage('assets/hintergrund.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SlideTransition(
            position: _offsetAnimation,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logotext.png'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




    
  /*@override
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
                image: AssetImage ("assets/images/logo.png"),
                  ),
                ),
              ),
               ],     
    );
  }
}




  

*/
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
                alignment: Alignment.topCenter,
              children: [
                Opacity(opacity: 0.2,  
                  child: Image.asset(
                        'assets/hintergrund.png',                 
                        fit: BoxFit.fill,
                      ),
                ),
              ],
         ),
      );
  }
}
 
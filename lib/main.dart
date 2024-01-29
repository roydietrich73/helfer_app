import 'package:helfer_app/screens/splash_screen.dart';

import 'models/theme.dart';
import 'package:flutter/material.dart';



void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: MyAppTheme.lightTheme(), // Verwende lightTheme
      theme: MyAppTheme.darkTheme(), // Oder verwende darkTheme
        home: SplashScreen(         
          
        ),
     );  
  }
}


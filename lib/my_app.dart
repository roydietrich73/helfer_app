import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/presentation/anmelden_login_screen.dart';
import 'package:helfer_app/features/splash/presentation/splash_screen.dart';
import 'package:helfer_app/utils/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.lightTheme(), // Verwende lightTheme
      //theme: MyAppTheme.darkTheme(), // Oder verwende darkTheme
        home: const SplashScreen(),
        routes: {
          '/anmeldenLogin':(context) => AnmeldenLogin(),
        }        
     );  
  }
}
import 'package:flutter/material.dart';
import 'package:helfer_app/common/navigation_provider/navigation_provider.dart';
import 'package:helfer_app/features/authentification/presentation/screens/anmelden_login_screen.dart';
//import 'package:helfer_app/features/authentification/presentation/screens/apple_auth_service.dart';
import 'package:helfer_app/features/home/home_screen.dart';
import 'package:helfer_app/features/splash/presentation/splash_screen.dart';
import 'package:helfer_app/utils/theme.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
        //Provider<AuthService>(
        //create: (_) => AuthService(),
      ],
      child: MaterialApp(
          //navigatorKey: Provider.of<NavigationProvider>(
          //  context, listen: false)
          //   .navigatorKey,
          theme: MyAppTheme.lightTheme(),
          home: const SplashScreen(),
          routes: {
            '/first': (context) => const AnmeldenLogin(),
            '/second': (context) => const HomeScreen(),
          }
          // home: AuthWrapper(),
          ),
    );
  }
}

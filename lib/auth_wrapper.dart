import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/presentation/auth_model.dart';
import 'package:helfer_app/features/login/screens/login/login_screen.dart';
import 'package:helfer_app/features/3/home/home_screen.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
      builder: (context, auth, _) {
        if (auth.isLoading) {
          return const CircularProgressIndicator(); // Warten, bis die Authentifizierung überprüft wurde
        }
        if (auth.user != null) {
          return const HomeScreen(); // Benutzer ist angemeldet, zeige den Startbildschirm
        }
        return LoginScreen(); // Benutzer ist nicht angemeldet, zeige den Anmeldebildschirm
      },
    );
  }
}

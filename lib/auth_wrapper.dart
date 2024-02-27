import 'package:flutter/material.dart';

import 'package:helfer_app/features/authentification/presentation/auth_model.dart';
import 'package:helfer_app/features/authentification/presentation/screens/login_page.dart';
import 'package:helfer_app/features/home/home_screen.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
      builder: (context, auth, _) {
        if (auth.isLoading) {
          return CircularProgressIndicator(); // Warten, bis die Authentifizierung überprüft wurde
        }
        if (auth.user != null) {
          return HomeScreen(); // Benutzer ist angemeldet, zeige den Startbildschirm
        }
        return LoginScreen(); // Benutzer ist nicht angemeldet, zeige den Anmeldebildschirm
      },
    );
  }
}

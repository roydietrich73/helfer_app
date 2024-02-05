import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/data/email_username_input.dart';
import 'package:helfer_app/features/authentification/data/password_input.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/hintergrund.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              EmailUsernameInput(),
              const SizedBox(height: 16),
              PwI(),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {},
                child: Text('Anmelden'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

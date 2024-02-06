import 'package:flutter/material.dart';
//import 'package:helfer_app/common/database_repository.dart';
import 'package:helfer_app/config/fonts.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/apple_button.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/google_button.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/login_button.dart';
import 'package:helfer_app/features/authentification/presentation/login_screen.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/registrieren_button.dart';
import 'package:helfer_app/features/authentification/presentation/registrieren.dart';

class AnmeldenLogin extends StatelessWidget {
//final DatabaseRepository databaseRepository;

  const AnmeldenLogin({super.key}); //required this.databaseRepository,});

  void _navigateToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

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
          const SizedBox(
            height: 50.0,
          ),
          ListView(
            children: <Widget>[
              Container(
                width: 270,
                height: 270,
                margin: const EdgeInsets.all(15),
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(
                height: 120.0,
              ),
              LoginBtn1(
                onPressed: () {
                  _navigateToLogin(context);
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              GoogleBtn1(
                onPressed: () {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              AppleBtn1(
                onPressed: () {},
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Center(
                child: Text(
                  'Noch kein Konto?',
                  style: TextStyle(
                    fontFamily: fo20,
                    fontSize: 10.0,
                  ),
                ),
              ),
              RegistrierenBtn1(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Registrieren()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

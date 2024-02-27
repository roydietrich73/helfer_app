import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/presentation/register_form.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';

class Registrieren extends StatelessWidget {
  const Registrieren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Helfer-App'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage('assets/hintergrund.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: RegisterForm(),
        ),
      ),
      bottomNavigationBar: btnNavBar(),
    );
  }
}

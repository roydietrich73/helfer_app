//
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/authentification/presentation/screens/apple/apple_container.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';

class LoginApple extends StatelessWidget {
  const LoginApple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Login mit Apple '),
      ),
      body: AppleContainer(),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

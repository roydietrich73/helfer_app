//
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/login/screens/apple/apple_container.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';

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

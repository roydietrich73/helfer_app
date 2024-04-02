import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';
import 'google_container.dart';

class LoginWithGooglePage extends StatelessWidget {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  LoginWithGooglePage({super.key});

  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Login mit Google'),
      ),
      body: CustomContainer(),
      bottomNavigationBar: const btnNavBar(),
    );
  }

  //
}

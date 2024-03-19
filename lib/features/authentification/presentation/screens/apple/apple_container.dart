import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/presentation/screens/apple/apple_button.dart';
import 'package:helfer_app/features/home/home_screen.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleContainer extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AppleContainer({Key? key}) : super(key: key);

  Future<void> _signInWithApple(BuildContext context) async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final AppleAuthProvider = OAuthProvider("apple.com");
      final credentialFirebase = AppleAuthProvider.credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      final userCredential =
          await _auth.signInWithCredential(credentialFirebase);
      final User? user = userCredential.user;

      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'displayName': user.displayName,
          'email': user.email,
        });
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    } catch (error) {
      print("Fehler beim Anmelden mit Apple: $error");
    }
  }
  //

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.2,
              image: AssetImage('assets/hintergrund.png'),
              fit: BoxFit.cover)),
      child: AppleBtn1(
        onPressed: () => _signInWithApple(context),
        child: const Text('Mit Apple anmelden'),
      ),
    );
  }
}

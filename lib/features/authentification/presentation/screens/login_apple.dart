import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/home/home_screen.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//import 'package:flutter_auth_provider/flutter_auth_provider.dart';

abstract class LoginApple extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  LoginApple({super.key});

  /*Future<UserCredential> signInWithApple()async{
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      await FirebaseAuth.instance.signInWithPopup(appleProvider);
    }else{
      await FirebaseAuth.instance.signInWithProvider(appleProvider);
    }
  }*/

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login mit Apple Beispiel'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _signInWithApple(context),
          child: const Text('Mit Apple anmelden'),
        ),
      ),
    );
  }
}

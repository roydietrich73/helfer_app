import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:helfer_app/features/authentification/presentation/screens/google/text_form_field_google.dart';
import 'google_button.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key}) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        final UserCredential authResult =
            await _auth.signInWithCredential(credential);
        final User? user = authResult.user;
        return user;
      } else {
        return null;
      }
    } catch (error) {
      print('Error signing in with Google: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.2,
          image: AssetImage('assets/hintergrund.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: GoogleBtn1(
        onPressed: () async {
          final User? user = await _signInWithGoogle();
          if (user != null) {
            // Anmeldung erfolgreich, handle den Zustand hier
            print('User signed in: ${user.displayName}');
          } else {
            // Anmeldung fehlgeschlagen
            print('Sign in failed');
          }
        },
        child: const Text('Mit Google anmelden'),
      ),
    );
  }
}

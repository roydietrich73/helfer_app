import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:helfer_app/features/authentification/presentation/screens/google/text_form_field_google.dart';
import 'google_button.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key}) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential?> _signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await _auth.signInWithCredential(credential);
    } catch (error) {
      print(error);
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
          UserCredential? userCredential = await _signInWithGoogle(context);
          if (userCredential != null) {
            print('Signed in: ${userCredential.user}');
          } else {
            print('Sign-in failed');
          }
        },
        child: const Text('Mit Google anmelden'),
      ),
    );
  }
}

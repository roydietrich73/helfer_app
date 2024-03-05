import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/google_button.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';
import 'package:helfer_app/features/home/home_screen.dart';

class LoginWithGooglePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  LoginWithGooglePage({super.key});

  Future<UserCredential> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (error) {
      print("Google sign in error: $error");
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage('assets/hintergrund.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GoogleBtn1(
            onPressed: () async {
              if (_auth.currentUser != null) {
                try {
                  UserCredential userCredential =
                      _signInWithGoogle() as UserCredential;
                  // Nach erfolgreicher Anmeldung weiterleiten
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomeScreen(user: userCredential.user)),
                  );
                } catch (error) {
                  // Fehlerbehandlung
                  print('Fehler bei der Google-Anmeldung: $error');
                }
              }
              ;
            },
            child: const Text('Mit Google anmelden'),
          ),
        ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

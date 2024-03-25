import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthBloc with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  //final FacebookAuth _facebookSignIn = FacebookAuth.instance;
  User? _user;
  User? get user => _user;

  StreamController<User?> _userController = StreamController<User?>.broadcast();
  Stream<User?> get userStream => _userController.stream;

  AuthBloc() {
    _auth.authStateChanges().listen((User? user) {
      _user = user;
      notifyListeners();
    });
  }
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      throw error;
    }
  }

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (error) {
      throw error;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await _auth.signInWithCredential(credential);
    } catch (error) {
      throw error;
    }
  }

  /*Future<void> signInWithFacebook() async {
    try {
      final LoginResult result = await _facebookSignIn.login();
      final AccessToken accessToken = result.accessToken!;
      final AuthCredential credential = FacebookAuthProvider.credential(accessToken.token);

      await _auth.signInWithCredential(credential);
    } catch (error) {
      throw error;
    }
  }

  Future<void> signInAnonymously() async {
    try {
      await _auth.signInAnonymously();
    } catch (error) {
      throw error;
    }
  }*/
}

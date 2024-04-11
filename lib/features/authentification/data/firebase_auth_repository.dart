import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:helfer_app/features/authentification/data/auth_reposiotry.dart';

class FirebaseAuthRepository implements AuthRepository {
  final authInstance = FirebaseAuth.instance;

  @override
  Stream<User?> get getAuthStream => authInstance.authStateChanges();

  @override
  User? get currentUser => authInstance.currentUser;

  /// Login
  @override
  Future<void> loginUser(String email, String password) async {
    try {
      await authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  /// Logout
  @override
  Future<void> logoutUser() async {
    try {
      await authInstance.signOut();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  /// SignUp
  @override
  Future<void> signUp(String email, String password) async {
    try {
      await authInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  /// Reset Password
  @override
  Future<void> resetPassword(String email) async {
    try {
      authInstance.sendPasswordResetEmail(email: email);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}

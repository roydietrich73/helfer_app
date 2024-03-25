import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/authentification/data/auth_reposiotry.dart';
import 'package:helfer_app/features/authentification/data/firebase_auth_repository.dart';

class AuthNotifier extends ChangeNotifier {
  final AuthRepository _authRepository = FirebaseAuthRepository();
  AuthNotifier() {
    _listenToAuthStateChanges();
  }

  void _listenToAuthStateChanges() {
    _authRepository.getAuthStream.listen((user) {
      if (user != null) {
        _isUserLoggedIn = true;
        _currentUser = user;
      } else {
        _isUserLoggedIn = false;
        _currentUser = null;
      }
      notifyListeners();
    });
  }

  bool _isUserLoggedIn = false;
  bool get isUserLoggedIn => _isUserLoggedIn;

  User? _currentUser;
  User? get currentUser => _currentUser;

  void loginUser(String email, String password) {
    _authRepository.loginUser(email, password);
  }

  void logoutUser() {
    _authRepository.logoutUser();
  }

  void signUp(String email, String password) {
    _authRepository.signUp(email, password);
  }

  void resetPassword(String email) {
    _authRepository.resetPassword(email);
  }
}

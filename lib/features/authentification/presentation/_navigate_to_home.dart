import 'package:flutter/material.dart';
import 'package:helfer_app/features/home/home_screen.dart';

class _navigateToHome {
  _navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }
}

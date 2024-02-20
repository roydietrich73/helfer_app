import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PwI extends StatefulWidget {
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PwI> {
  final TextEditingController passwordController = TextEditingController();
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: passwordController,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _isValid ? null : 'Falsches Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _savePassword() async {
    String password = passwordController.text;

    // Simple password validation (length >= 6)
    bool isValidPassword = password.length >= 6;

    setState(() {
      _isValid = isValidPassword;
    });

    if (isValidPassword) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('password', password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password saved successfully'),
        ),
      );
    }
  }
}

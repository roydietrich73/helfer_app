import 'package:flutter/material.dart';

class PwI extends StatefulWidget {
  const PwI({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PwI> {
  final TextEditingController passwordController = TextEditingController();
  final bool _isValid = true;

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
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: _isValid ? null : 'Falsches Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

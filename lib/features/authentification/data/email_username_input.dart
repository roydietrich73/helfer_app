import 'package:flutter/material.dart';

class EmailUsernameInput extends StatefulWidget {
  const EmailUsernameInput({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmailUsernameInputState createState() => _EmailUsernameInputState();
}

class _EmailUsernameInputState extends State<EmailUsernameInput> {
  TextEditingController emailController = TextEditingController();
  final bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            obscureText: false,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: 'Email or Username',
              errorText: _isValid ? null : 'Invalid input',
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

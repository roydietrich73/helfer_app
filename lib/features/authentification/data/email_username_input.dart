import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmailUsernameInput extends StatefulWidget {
  @override
  _EmailUsernameInputState createState() => _EmailUsernameInputState();
}

class _EmailUsernameInputState extends State<EmailUsernameInput> {
  final TextEditingController _controller = TextEditingController();
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Email or Username',
              errorText: _isValid ? null : 'Invalid input',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _saveInput,
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _saveInput() async {
    String input = _controller.text.trim();

    // Simple email validation
    bool isValidEmail =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
            .hasMatch(input);

    setState(() {
      _isValid = isValidEmail;
    });

    if (isValidEmail) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('emailUsername', input);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Input saved successfully'),
        ),
      );
    }
  }
}

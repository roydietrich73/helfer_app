import 'package:flutter/material.dart';
import 'package:helfer_app/common/controller/auth_controller.dart';
import 'package:helfer_app/features/login/screens/login/login_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<AuthNotifier>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/hintergrund.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E_Mail'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              LoginBtn1(
                onPressed: () {
                  print('Login Button pressed');
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();
                  notifier.loginUser(email, password);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

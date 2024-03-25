import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'auth_bloc.dart';

class LoginPage extends StatefulWidget {
  final AuthBloc authBloc;

  const LoginPage({super.key, required this.authBloc});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'E-Mail',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Passwort',
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await widget.authBloc.signInWithEmailAndPassword(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                  );
                  Navigator.pushNamed(context, '/start');
                } catch (error) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(error.toString())));
                }
              },
              child: const Text('Anmelden'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await widget.authBloc.registerWithEmailAndPassword(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Registrierung erfolgreich!')));
                } catch (error) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(error.toString())));
                }
              },
              child: const Text('Registrieren'),
            ),
          ],
        ),
      ),
    );
  }
}

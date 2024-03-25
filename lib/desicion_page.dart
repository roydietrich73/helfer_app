import 'package:flutter/material.dart';
import 'package:helfer_app/common/controller/auth_controller.dart';
import 'package:helfer_app/features/login/screens/anmelden_login_screen.dart';
import 'package:helfer_app/features/5/startseite/start_screen.dart';
import 'package:provider/provider.dart';

class DesicionPage extends StatelessWidget {
  const DesicionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<AuthNotifier>(context);
    return notifier.isUserLoggedIn ? StartScreen() : AnmeldenLogin();
  }
}

import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/startseite/build_user_list.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Startbildschirm'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: UserList(
              title: 'Hilfe Anbieten',
              offerHelp: true,
              helpType: '',
            ),
          ),
          Expanded(
            child: UserList(
              title: 'Hilfe Suchen',
              offerHelp: false,
              helpType: '',
            ),
          ),
        ],
      ),
    );
  }
}

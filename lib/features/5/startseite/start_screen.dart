import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/5/startseite/build_user_list.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Auswahl'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage('assets/hintergrund.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
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
        ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

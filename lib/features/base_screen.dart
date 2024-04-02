import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Helfer-App'),
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
            //einfügen von weiteren funktionen
            ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

/*class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [btnColor, btnColor2],
                begin: Alignment
                    .centerLeft, // Startposition des Farbverlaufs (links)
                end: Alignment
                    .centerRight, // Endposition des Farbverlaufs (rechts)
              ),
            ),
            child: AppBar(
              title: const Text(''),
              backgroundColor: Colors
                  .transparent, // Hintergrundfarbe der AppBar transparent machen
              elevation: 0, // Schatten der AppBar entfernen
            ),
          ),
        ),
        extendBody: true,
        bottomNavigationBar: const BottomNavBarCurvedFb1(),
      ),
    );
  }
}*/

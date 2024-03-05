import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';
import 'package:helfer_app/features/home/container/toggle_container.dart';
import 'package:helfer_app/features/home/container/first_container.dart';
import 'package:helfer_app/features/home/container/new_container.dart';
import 'package:helfer_app/features/selections/selection_screen.dart';
import 'package:helfer_app/utils/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, User? user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _color1 = btnColor;
  Color _color2 = chtColor2;

  void _toggleColor(int index) {
    setState(() {
      if (index == 1) {
        _color1 = _color1 == btnColor ? chtColor2 : btnColor;
      } else if (index == 2) {
        _color2 = _color2 == btnColor ? chtColor2 : btnColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Helfer-App'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage('assets/hintergrund.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Was wollen sie tun?',
              style: TextStyle(fontSize: 24),
            ),
            Sizes.gapH16,
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      const ToggleColorApp();
                    },
                    child: FirstContainer(color1: _color1),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      const ToggleColorApp();
                    },
                    child: NewContainer(color2: _color2),
                  ),
                ]),
            Sizes.gapH100,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectionScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btnColor,
                fixedSize: const Size(150, 50),
                elevation: 20,
              ),
              child: const Text(
                'Weiter',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

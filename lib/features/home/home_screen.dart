import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/home/navbar/bottom_nav_bar.dart';
import 'package:helfer_app/features/home/button/elvd_button.dart';
import 'package:helfer_app/features/home/container/first_container.dart';
import 'package:helfer_app/features/home/container/second_container.dart';
import 'package:helfer_app/utils/sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
            image: AssetImage(
                'assets/hintergrund.png'), // Pfad zum Hintergrundbild
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
                    onTap: () => _toggleColor(1),
                    child: FirstContainer(color1: _color1),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () => _toggleColor(2),
                    child: NewContainer(color2: _color2),
                  ),
                ]),
            Sizes.gapH100,
            ElvdButton()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

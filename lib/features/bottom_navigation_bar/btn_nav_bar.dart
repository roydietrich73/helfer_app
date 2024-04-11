import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/5/startseite/start_screen.dart';
import 'package:helfer_app/features/7/einstellungen/settings_screen.dart';
import 'package:helfer_app/features/9/suche/search_screen.dart';
import 'package:helfer_app/features/bottom_navigation_bar/nav_bar_icon.dart';
import 'package:helfer_app/features/favorite/favorite_screen.dart';

// ignore: camel_case_types
class btnNavBar extends StatefulWidget {
  const btnNavBar({super.key});

  @override
  _btnNavBarState createState() => _btnNavBarState();
}

// ignore: camel_case_types
class _btnNavBarState extends State<btnNavBar> {
  final int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const Text('Search'),
    const Text('Favorite'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          gradient: const LinearGradient(
            colors: [btnColor2, btnColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarIcon(
              text: 'Home',
              icon: Icons.home_outlined,
              selected: true,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartScreen()),
                );
              },
              defaultColor: btnColor,
              selectedColor: btnColor2,
            ),
            NavBarIcon(
              text: "Search",
              icon: Icons.search_outlined,
              selected: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HelpOfferSearchScreen()),
                );
              },
              defaultColor: btnColor,
              selectedColor: btnColor2,
            ),
            NavBarIcon(
              text: "Favorite",
              icon: Icons.favorite_outlined,
              selected: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavoriteScreen()),
                );
              },
              defaultColor: btnColor,
              selectedColor: btnColor2,
            ),
            NavBarIcon(
              text: "Settings",
              icon: Icons.settings_outlined,
              selected: false,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
              selectedColor: btnColor2,
              defaultColor: btnColor,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

class btnNavBar extends StatelessWidget {
  const btnNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: btnColor2,
      currentIndex: 0,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(
          backgroundColor: btnColor2,
          icon: Icon(Icons.home),
          label: 'Startseite',
        ),
        BottomNavigationBarItem(
          backgroundColor: btnColor2,
          icon: Icon(Icons.search),
          label: 'Suche',
        ),
        BottomNavigationBarItem(
          backgroundColor: btnColor2,
          icon: Icon(Icons.favorite),
          label: 'Favoriten',
        ),
        BottomNavigationBarItem(
          backgroundColor: btnColor2,
          icon: Icon(Icons.settings),
          label: 'Einstellungen',
        ),
      ],
    );
  }
}

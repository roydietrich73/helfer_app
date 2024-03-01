import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';

// ignore: camel_case_types
class btnNavBar extends StatefulWidget {
  const btnNavBar({super.key});

  @override
  _btnNavBarState createState() => _btnNavBarState();
}

// ignore: camel_case_types
class _btnNavBarState extends State<btnNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Startseite'),
    const Text('Suche'),
    const Text('Favoriten'),
    const Text('Einstellungen'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: btnColor2,
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

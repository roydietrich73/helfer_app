import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/utils/sizes.dart';
import 'package:helfer_app/utils/text_style.dart';

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
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: _color1,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: const Center(
                        child: Text(
                          'Hilfe suchen',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () => _toggleColor(2),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: _color2,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: const Center(
                        child: Text('Hilfe anbieten',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                ]),
            Sizes.gapH100,
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Weiter',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnColor2,
                  fixedSize: const Size(150, 50),
                  elevation: 20,
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
//LinearGradient(colors: [Colors.orange, Colors.yellow])
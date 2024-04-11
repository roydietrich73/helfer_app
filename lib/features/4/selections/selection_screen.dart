// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';
//import 'package:helfer_app/utils/sizes.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  final List<String> categories = [
    'Einkaufen',
    'Haushalt',
    'Behördengänge',
    'Technik',
    'Arztbesuch',
    'Babysitting',
    'Freizeit',
    'Garten',
    'Category 9',
    'Category 10'
  ];
  List<bool> selected = List.filled(10, false);

  void _toggleSelection(int index) {
    setState(() {
      selected[index] = !selected[index];
    });
  }

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
            image: AssetImage(
                'assets/hintergrund.png'), // Pfad zum Hintergrundbild
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(categories.length, (index) {
                return GestureDetector(
                  onTap: () => _toggleSelection(index),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 15,
                    height: 100,
                    decoration: BoxDecoration(
                      color: selected[index]
                          ? const Color.fromRGBO(246, 146, 4, 1.0)
                          : const Color.fromRGBO(188, 22, 50, 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: selected[index] ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            //button einbauen wichtig
          ),
        ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

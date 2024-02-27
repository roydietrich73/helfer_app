import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';
//import 'package:helfer_app/utils/sizes.dart';

class SelectionScreen extends StatefulWidget {
  @override
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

  Future<void> _saveSelection() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    List<String> selectedCategories = [];
    for (int i = 0; i < selected.length; i++) {
      if (selected[i]) {
        selectedCategories.add(categories[i]);
      }
    }
    try {
      await firestore.collection('users').doc('user_id').set({
        'selectedCategories': selectedCategories,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Auswahl gespeichert')),
      );
    } catch (e) {
      print("Fehler beim Speichern der Auswahl: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          ? Color.fromRGBO(246, 146, 4, 1.0)
                          : Color.fromRGBO(188, 22, 50, 1.0),
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
          ),
        ),
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

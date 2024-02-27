import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/selections/selection_screen.dart';

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

    // Sammle ausgewählte Kategorien
    List<String> selectedCategories = [];
    for (int i = 0; i < selected.length; i++) {
      if (selected[i]) {
        selectedCategories.add(categories[i]);
      }
    }

    // Speichere ausgewählte Kategorien in Firestore
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
    // TODO: implement build
    throw UnimplementedError();
  }
}

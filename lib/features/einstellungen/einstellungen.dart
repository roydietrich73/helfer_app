// ignore_for_file: avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/btn_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _color = '';
  bool _showMagnifier = false;
  bool _showHistory = false;
  bool _helpEnabled = false;

  // ignore: unused_field
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _settingsCollection =
      FirebaseFirestore.instance.collection('settings');

  @override
  void initState() {
    super.initState();
    loadSettings();
  }

  Future<void> loadSettings() async {
    try {
      DocumentSnapshot settingsDoc =
          await _settingsCollection.doc('user_settings').get();
      if (settingsDoc.exists) {
        setState(() {
          _color = settingsDoc['color'] ?? '';
          _showMagnifier = settingsDoc['show_magnifier'] ?? false;
          _showHistory = settingsDoc['show_history'] ?? false;
          _helpEnabled = settingsDoc['help_enabled'] ?? false;
        });
      }
    } catch (e) {
      print('Fehler beim Laden der Einstellungen: $e');
    }
  }

  Future<void> saveSettings() async {
    try {
      await _settingsCollection.doc('user_settings').set({
        'color': _color,
        'show_magnifier': _showMagnifier,
        'show_history': _showHistory,
        'help_enabled': _helpEnabled,
      });
      print('Einstellungen erfolgreich gespeichert');
    } catch (e) {
      print('Fehler beim Speichern der Einstellungen: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Einstellungen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          DropdownButtonFormField(
            value: _color,
            items: const [
              DropdownMenuItem(child: Text('Blau'), value: 'blue'),
              DropdownMenuItem(child: Text('Grün'), value: 'green'),
              DropdownMenuItem(child: Text('Rot'), value: 'red'),
            ],
            onChanged: (value) {
              setState(() {
                _color = value.toString();
              });
            },
            decoration: const InputDecoration(labelText: 'Farbe'),
          ),
          SwitchListTile(
            title: const Text('Lupe anzeigen'),
            value: _showMagnifier,
            onChanged: (value) {
              setState(() {
                _showMagnifier = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Verlauf anzeigen'),
            value: _showHistory,
            onChanged: (value) {
              setState(() {
                _showHistory = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Hilfe aktivieren'),
            value: _helpEnabled,
            onChanged: (value) {
              setState(() {
                _helpEnabled = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: saveSettings,
            child: const Text('Einstellungen speichern'),
          ),
        ],
      ),
      bottomNavigationBar: const btnNavBar(),
    );
  }
}

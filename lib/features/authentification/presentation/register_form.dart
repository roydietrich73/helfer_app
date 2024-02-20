import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/features/home/home_screen.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _address = '';
  String _zipCode = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Vorname'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Bitte geben Sie Ihren Vornamen ein';
                }
                return null;
              },
              onSaved: (value) {
                _firstName = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nachname'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Bitte geben Sie Ihren Nachnamen ein';
                }
                return null;
              },
              onSaved: (value) {
                _lastName = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Adresse'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Bitte geben Sie Ihre Adresse ein';
                }
                return null;
              },
              onSaved: (value) {
                _address = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Postleitzahl'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Bitte geben Sie Ihre Postleitzahl ein';
                }
                return null;
              },
              onSaved: (value) {
                _zipCode = value!;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Daten in Firestore speichern
                    await FirebaseFirestore.instance.collection('users').add({
                      'firstName': _firstName,
                      'lastName': _lastName,
                      'address': _address,
                      'zipCode': _zipCode,
                    });
                    // Weiterleitung zum Home-Screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
                child: Text('Registrieren'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
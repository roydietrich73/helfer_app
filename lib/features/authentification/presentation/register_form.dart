import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/authentification/presentation/buttons/registrieren_button.dart';
import 'package:helfer_app/features/3/home/home_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _address = '';
  String _zipCode = '';
  final String _email = '';
  final String _username = '';
  final String _besonderheiten = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Registrieren'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          opacity: 0.2,
          image: AssetImage('assets/hintergrund.png'),
          fit: BoxFit.cover,
        )),
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Vorname'),
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
                decoration: const InputDecoration(labelText: 'Nachname'),
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
                decoration: const InputDecoration(labelText: 'Adresse'),
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
                decoration: const InputDecoration(labelText: 'Postleitzahl'),
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
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Bitte geben Sie Ihre E-Mail ein';
                  }
                  return null;
                },
                onSaved: (value) {
                  _zipCode = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Bitte geben Sie Ihren Usernamen ein';
                  }
                  return null;
                },
                onSaved: (value) {
                  _zipCode = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Besonderheiten'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Bitte geben Sie Ihre Besonderheiten ein';
                  }
                  return null;
                },
                onSaved: (value) {
                  _zipCode = value!;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RegistrierenBtn1(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Daten in Firestore speichern
                      await FirebaseFirestore.instance.collection('users').add({
                        'Vorname': _firstName,
                        'Nachname': _lastName,
                        'Addresse': _address,
                        'Postleitzahl': _zipCode,
                        'E-Mail': _email,
                        'Username': _username,
                        'Besonderheiten': _besonderheiten
                      });
                      // Weiterleitung zum Home-Screen
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

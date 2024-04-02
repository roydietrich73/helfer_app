import 'dart:io';
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/6/chat/chat_bloc/chat_bloc.dart';
import 'package:helfer_app/features/6/chat/chat_model/chat_model.dart';
import 'package:helfer_app/features/6/chat/chat_screen/chat_screen.dart';
import 'package:helfer_app/features/8/profil/change_password_dialog.dart';
import 'package:helfer_app/features/8/profil/profile_picture.dart';
import 'package:helfer_app/features/8/profil/profile_text_field.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late User? _user;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _specialtiesController = TextEditingController();
  File? _image;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  get userId => null;

  get otherUserId => null;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser;
    _fetchUserData();
  }

  //// [Auslagern]
  /// Aufagben:
  /// Ropositorys fuer jedes Kontrekte Feature ein Reposiotory
  /// Methoden in Repositorys auslagern
  /// Methode in der Ui aufrufen
  /// Funktionalitaet kontrollieren

  Future<void> _fetchUserData() async {
    final userData = await _firestore.collection('users').doc(_user!.uid).get();
    setState(() {
      _nameController.text = userData.get('name') ?? '';
      _addressController.text = userData.get('address') ?? '';
      _phoneController.text = userData.get('phone') ?? '';
      _specialtiesController.text = userData.get('specialties') ?? '';
    });
  }

  Future<void> _saveUserData() async {
    await _firestore.collection('users').doc(_user!.uid).set({
      'name': _nameController.text,
      'address': _addressController.text,
      'phone': _phoneController.text,
      'specialties': _specialtiesController.text,
    });
  }

  Future<void> _changePassword(String newPassword) async {
    await _user!.updatePassword(newPassword);
  }

  Future<void> _changeProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _uploadImage();
      }
    });
  }

  Future<void> _uploadImage() async {
    if (_image != null) {
      final ref = _storage.ref().child('profile_pictures/${_user!.uid}');
      await ref.putFile(_image!);
      final downloadUrl = await ref.getDownloadURL();
      await _firestore.collection('users').doc(_user!.uid).update({
        'profile_picture': downloadUrl,
      });
    }
  }

  ////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const btnNavBar(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Profil'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveUserData,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfilePicture(
              image: _image,
              onTap: _changeProfilePicture,
            ),
            const SizedBox(height: 20),
            ProfileTextField(
              controller: _nameController,
              labelText: 'Name',
            ),
            ProfileTextField(
              controller: _addressController,
              labelText: 'Adresse',
            ),
            ProfileTextField(
              controller: _phoneController,
              labelText: 'Telefon',
            ),
            ProfileTextField(
              controller: TextEditingController(text: _user!.email ?? ''),
              labelText: 'E-Mail',
              enabled: false,
            ),
            ProfileTextField(
              controller: _specialtiesController,
              labelText: 'Besonderheiten',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => ChangePasswordDialog(
                    changePassword: _changePassword,
                  ),
                );
              },
              child: const Text('Passwort ändern'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ChatBloc().createChat(
                    ChatModel(userId: userId, otherUserId: otherUserId));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChatScreen(userId: userId, otherUserId: otherUserId)),
                );
              },
              child: const Text('Chat'),
            ),
          ],
        ),
      ),
    );
  }
}

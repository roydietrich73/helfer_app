import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilRepository {
  late User? _user;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _specialtiesController = TextEditingController();
  File? _image;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

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

  void setState(Null Function() param0) {}
}

import 'package:firebase_core/firebase_core.dart';
import 'package:helfer_app/firebase_options.dart';
import 'package:helfer_app/my_app.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

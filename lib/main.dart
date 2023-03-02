import 'package:firebase_login/mainpage.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Main_page(),
  ));
}
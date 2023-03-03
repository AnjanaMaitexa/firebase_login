import 'package:firebase_login/mainpage.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';


Future main() async {//aync fun returns the type future
  WidgetsFlutterBinding.ensureInitialized();//to interact with flutter engine
  //we put await infront of async to make lines waitnf for future result
  await Firebase.initializeApp();//need to call the code to initialize firebase
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Main_page(),
  ));
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/home.dart';
import 'package:firebase_login/login.dart';
import 'package:flutter/material.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        //help to keep persistent connection with firestore database
          stream: FirebaseAuth.instance.authStateChanges(), //build connection
          builder: (context, snapshot) {//A DataSnapshot contains data from a Database location.
            if (snapshot.hasData) {//user is loged in or not
              return Home();
            } else {
              return Login();
            }
          }),
    );
  }
}
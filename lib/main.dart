// ignore_for_file: prefer_const_constructors

import 'package:emailpassauth/first.dart';
import 'package:emailpassauth/home.dart';
import 'package:emailpassauth/login.dart';
import 'package:emailpassauth/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first':(context) => MyFirst(),
      'register':(context) => MyRegister(),
      'login':(context) => MyLogin(),
      'home':(context) => MyHome()
    },
  ));
}

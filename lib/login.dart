// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String email = '', pass = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(hintText: 'Email'),
              ),
              TextField(
                onChanged: (value) {
                  pass = value;
                },
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              ElevatedButton(
                  onPressed: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                              email: email,
                              password: pass);
                          Navigator.pushNamed(context, 'home');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}

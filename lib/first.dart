// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyFirst extends StatelessWidget {
  MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Login')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text('Resigter'))
          ],
        ),
      ),
    );
  }
}

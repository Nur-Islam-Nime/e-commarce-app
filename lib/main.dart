import 'package:araianibazar/login.dart';
import 'package:araianibazar/signUp.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'mnew.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

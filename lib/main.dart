import 'package:araianibazar/category.dart';
import 'package:araianibazar/forgotpass.dart';
import 'package:araianibazar/dashboard.dart';
import 'package:araianibazar/jsondata.dart';
import 'package:araianibazar/login.dart';
import 'package:araianibazar/signUp.dart';
import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dashboard(),
    );
  }
}

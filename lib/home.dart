import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      )),
    );
  }
}

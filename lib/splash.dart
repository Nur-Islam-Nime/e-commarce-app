import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Araiany Bazar",
                  style: TextStyle(
                      fontFamily: "DancingScript",
                      fontSize: 40,
                      shadows: [
                        Shadow(
                            offset: Offset(6.0, 6.0),
                            blurRadius: 0.1,
                            color: Color.fromRGBO(247, 247, 247, 0.5)),
                        Shadow(
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 8.0,
                            color: Color.fromRGBO(247, 247, 247, 1)),
                      ]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(227, 237, 247, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(-5, -5))
                    ]),
              )
            ],
          ),
        ),
      )),
    );
  }
}

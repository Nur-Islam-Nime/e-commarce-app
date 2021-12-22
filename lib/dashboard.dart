import 'dart:ui';

import 'package:araianibazar/category.dart';
import 'package:araianibazar/controller.dart';
import 'package:araianibazar/gear.dart';
import 'package:araianibazar/headphone.dart';
import 'package:araianibazar/login.dart';
import 'package:araianibazar/profile.dart';
import 'package:araianibazar/signUp.dart';
import 'package:araianibazar/speaker.dart';
import 'package:araianibazar/vrset.dart';
import 'package:araianibazar/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'home.dart';
import 'message.dart';
import 'productview.dart';
import 'bag.dart';
import 'camera.dart';
import 'earphone.dart';
import 'helmet.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _selectNavPosition = 0;
  var rating = 3.0;

  final _pages = [
    home(),
    profile(),
    message(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(227, 237, 247, 1),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          elevation: 0,
          backgroundColor: Color.fromRGBO(227, 237, 247, 1),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.black,
            )
          ],
        ),
        // endDrawer: Drawer(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  Container(
                      // child: Image(image: image),
                      ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("user name"),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("username@gmail.com"),
                  )
                ],
              )),
              ListTile(
                title: Text("Profile"),
                leading: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.deepOrange,
                ),
              ),
              ListTile(
                  title: Text("Order"),
                  leading: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.deepOrange,
                  ))
            ],
          ),
        ),
        body: _pages[_selectNavPosition],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Profile")
          ],
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.black,
          elevation: 50,
          currentIndex: _selectNavPosition,
          backgroundColor: Color.fromRGBO(227, 237, 247, 1),
          onTap: (int index) {
            setState(() {
              _selectNavPosition = index;
            });
          },
        ));
  }
}

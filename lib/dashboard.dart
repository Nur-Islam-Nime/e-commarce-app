import 'dart:ui';

import 'package:araianybazar/invoice.dart';

import 'category.dart';
import 'controller.dart';
import 'gear.dart';
import 'headphone.dart';
import 'login.dart';
import 'profile.dart';
import 'signUp.dart';
import 'speaker.dart';
import 'vrset.dart';
import 'watch.dart';
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
    message(),
    profile(),
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
              onPressed: () {

              },
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.black,
            )
          ],
        ),
        // endDrawer: Drawer(),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                color: Color.fromRGBO(227, 237, 247, 1),
                child: DrawerHeader(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                          child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/nime.jpg'),
                        backgroundColor: Colors.transparent,
                      )),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Nur Islam Nime"),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("nurislamnime@gmail.com"),
                    )
                  ],
                )),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Color.fromRGBO(227, 237, 247, 1),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Android and IOS Developer"),
                      leading: Icon(Icons.phone_android, color: Colors.black),
                    ),
                    ListTile(
                        title: Text("Sherpur"),
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                        )),
                    ListTile(
                        title: Text("01787559696"),
                        leading: Icon(
                          Icons.mobile_screen_share,
                          color: Colors.black,
                        )),
                    ListTile(
                        title: Text("Diploma in Computer Technology"),
                        leading: Icon(
                          Icons.school_rounded,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
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
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                            child: Text("Log out",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black))),
                      ),
                    )
                  ],
                ),
              )
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

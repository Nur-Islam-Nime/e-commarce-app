import 'package:araianibazar/earphone.dart';
import 'package:araianibazar/gear.dart';
import 'package:araianibazar/productview.dart';
import 'package:araianibazar/speaker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

import 'bag.dart';
import 'camera.dart';
import 'category.dart';
import 'controller.dart';
import 'headphone.dart';
import 'helmet.dart';
import 'vrset.dart';
import 'watch.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<String> imageList = [
    "assets/images/headphone/headphone-blue.png",
    "assets/images/headphone/headphone-red.png",
    "assets/images/headphone/headphone-black.png",
    "assets/images/headphone/headphone-white.png",
  ];
  var hdata = new headPhoneData();
  var edata = new earPhoneData();
  var helmetdata = new helmetData();
  var cameradata = new cameraData();
  var controllerdata = new controllerData();
  var geardata = new gearData();
  var speakerdata = new speakerData();
  var vrsetdata = new vrsetData();
  var watchdata = new watchData();
  var bagdata = new bagData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 28.0, top: 20, right: 28.0, bottom: 5),
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
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, top: 1, right: 25, bottom: 1),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "search",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        // focusColor: Color.fromRGBO(227, 237, 247, 1),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                child: CarouselSlider.builder(
                  slideBuilder: (index) {
                    return Container(
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  slideTransform: CubeTransform(),
                  autoSliderDelay: Duration(seconds: 4),
                  enableAutoSlider: true,
                  unlimitedMode: true,
                  itemCount: imageList.length,
                ),
              ),
            ),
            Container(
              // height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // scrollDirection:Axis.horizontal
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
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
                          onPressed: () {}, child: Text("Headphone")),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(6.0),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => category()));
                    },
                    child: Text(
                      'Category',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("Headphone",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black))),
                    Container(
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
                                      builder: (context) => category()));
                            },
                            child: Text(
                              "View all",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (2 / 3),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    productview(hdata.headPhoneList[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(227, 237, 247, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.asset(
                                          hdata.headPhoneList[index].imageUrl),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Text(
                                        hdata.headPhoneList[index].title,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      hdata.headPhoneList[index].price
                                          .toString(),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.red,
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("Earphone",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black))),
                    Container(
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
                                      builder: (context) => category()));
                            },
                            child: Text(
                              "View all",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )))
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 6,
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (2 / 3),
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    productview(edata.earPhoneList[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(227, 237, 247, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.asset(
                                          edata.earPhoneList[index].imageUrl),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Text(
                                        edata.earPhoneList[index].title,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      edata.earPhoneList[index].price
                                          .toString(),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.red,
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("Helmet",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black))),
                    Container(
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
                                      builder: (context) => category()));
                            },
                            child: Text(
                              "View all",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (2 / 3),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    productview(helmetdata.helmetList[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(227, 237, 247, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.asset(helmetdata
                                          .helmetList[index].imageUrl),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Text(
                                        helmetdata.helmetList[index].title,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      helmetdata.helmetList[index].price
                                          .toString(),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.red,
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("Bag",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black))),
                    Container(
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
                                      builder: (context) => category()));
                            },
                            child: Text(
                              "View all",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (2 / 3),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    productview(bagdata.bagList[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(227, 237, 247, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Image.asset(
                                          bagdata.bagList[index].imageUrl),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Text(
                                        edata.earPhoneList[index].title,
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: 4,
                                ),
                                Flexible(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bagdata.bagList[index].price.toString(),
                                    ),
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.red,
                                    )
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

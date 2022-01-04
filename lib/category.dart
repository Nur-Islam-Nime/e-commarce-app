import 'item-camera.dart';
import 'item-controller.dart';
import 'item-earphone.dart';
import 'item-gear.dart';
import 'item-helmet.dart';
import 'item-speaker.dart';
import 'item-vrset.dart';
import 'item-watch.dart';
import 'package:flutter/material.dart';
import 'item-bag.dart';
import 'item-headphone.dart';

class category extends StatefulWidget {
  category({Key? key}) : super(key: key);

  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  int _selectedIndex = 0;
  final _pages = [
    allheadphone(),
    allbag(),
    allhelmet(),
    allcontroller(),
    allgear(),
    allspeaker(),
    allwatch(),
    allcamera(),
    allvrset(),
    allearphone()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(227, 237, 247, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Row(


            children: [
              LayoutBuilder(
                builder: (context, constraint) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: constraint.maxHeight),
                      child: IntrinsicHeight(
                        child: NavigationRail(

                          backgroundColor: Color.fromRGBO(227, 237, 247, 1),
                          labelType: NavigationRailLabelType.all,
                          minWidth: 50,

                          destinations: [
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.headphones,
                                  color: Colors.grey,
                                ),
                                label: Text("Headphone",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.headphones,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.badge,
                                  color: Colors.grey,
                                ),
                                label: Text("Bag",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.badge,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.panorama_horizontal_select_outlined,
                                  color: Colors.grey,
                                ),
                                label: Text("Helmet",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.panorama_horizontal_select_outlined,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.control_point,
                                  color: Colors.grey,
                                ),
                                label: Text("Controller",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.graphic_eq_sharp,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.graphic_eq_sharp,
                                  color: Colors.grey,
                                ),
                                label: Text("Gear",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.control_point,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.speaker,
                                  color: Colors.grey,
                                ),
                                label: Text("Speaker",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.speaker,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.watch,
                                  color: Colors.grey,
                                ),
                                label: Text("watch",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.watch,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                ),
                                label: Text("Camera",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.speaker,
                                  color: Colors.grey,
                                ),
                                label: Text("Speaker",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.speaker,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.phonelink,
                                  color: Colors.grey,
                                ),
                                label: Text("Vr set",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.phonelink,
                                  color: Colors.black,
                                )),
                            NavigationRailDestination(
                                icon: Icon(
                                  Icons.headphones,
                                  color: Colors.grey,
                                ),
                                label: Text("Earphone",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                selectedIcon: Icon(
                                  Icons.headphones,
                                  color: Colors.black,
                                ))
                          ],
                          selectedIndex: _selectedIndex,
                          onDestinationSelected: (value) {
                            setState(() {
                              _selectedIndex = value;
                            });
                          },
                        ),
                      ),
                    ),);
                }
              ),
              Expanded(
                  child: Container(
                child: _pages[_selectedIndex],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

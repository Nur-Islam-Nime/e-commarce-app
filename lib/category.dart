import 'package:araianibazar/item-camera.dart';
import 'package:araianibazar/item-controller.dart';
import 'package:araianibazar/item-earphone.dart';
import 'package:araianibazar/item-gear.dart';
import 'package:araianibazar/item-helmet.dart';
import 'package:araianibazar/item-speaker.dart';
import 'package:araianibazar/item-vrset.dart';
import 'package:araianibazar/item-watch.dart';
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
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Color.fromRGBO(227, 237, 247, 1),
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                  icon: Icon(
                    Icons.headphones,
                    color: Colors.grey,
                  ),
                  label: Text("Headphone"),
                  selectedIcon: Icon(
                    Icons.headphones,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.badge,
                    color: Colors.grey,
                  ),
                  label: Text("Bag"),
                  selectedIcon: Icon(
                    Icons.badge,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.panorama_horizontal_select_outlined,
                    color: Colors.grey,
                  ),
                  label: Text("Helmet"),
                  selectedIcon: Icon(
                    Icons.panorama_horizontal_select_outlined,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.control_point,
                    color: Colors.grey,
                  ),
                  label: Text("Controller"),
                  selectedIcon: Icon(
                    Icons.graphic_eq_sharp,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.graphic_eq_sharp,
                    color: Colors.grey,
                  ),
                  label: Text("Gear"),
                  selectedIcon: Icon(
                    Icons.control_point,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.speaker,
                    color: Colors.grey,
                  ),
                  label: Text("Speaker"),
                  selectedIcon: Icon(
                    Icons.speaker,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.watch,
                    color: Colors.grey,
                  ),
                  label: Text("watch"),
                  selectedIcon: Icon(
                    Icons.watch,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  label: Text("Camera"),
                  selectedIcon: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.speaker,
                    color: Colors.grey,
                  ),
                  label: Text("Speaker"),
                  selectedIcon: Icon(
                    Icons.speaker,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.phonelink,
                    color: Colors.grey,
                  ),
                  label: Text("Vr set"),
                  selectedIcon: Icon(
                    Icons.phonelink,
                    color: Colors.black,
                  )),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.headphones,
                    color: Colors.grey,
                  ),
                  label: Text("Earphone"),
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
          Expanded(
              child: Container(
            child: _pages[_selectedIndex],
          ))
        ],
      ),
    );
  }
}

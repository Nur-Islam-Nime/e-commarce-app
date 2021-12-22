import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'signUp.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  String name = "";
  @override
  void initState() {
    // TODO: implement initState
    getSharedPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text(name)),
    );
  }

  getSharedPref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString('user_name')!;
    });
  }
}

import 'dart:convert';

import 'jsondata.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class gridjsondata extends StatefulWidget {
  const gridjsondata({Key? key}) : super(key: key);

  @override
  State<gridjsondata> createState() => _gridjsondataState();
}

class _gridjsondataState extends State<gridjsondata> {
  final url = "https://date.nager.at/api/v2/publicholidays/2020/US";
  var _postjson = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          shrinkWrap: true,
          itemCount: _postjson.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (2 / 3),
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, index) {
            final load = _postjson[index];
            return Container(
              color: Colors.blueAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Date :${load["date"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Localname :${load["localName"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Name :${load["name"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("CountryCode :${load["countryCode"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("fixed :${load["fixed"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("global :${load["global"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("counties :${load["counties"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("launchYear :${load["launchYear"]}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("type :${load["type"]}"),
                  ),
                ],
              ),
            );
          }),
      // body: ListView.builder(
      //     itemCount: 20,
      //     itemBuilder: (context, index) {
      //       final load = _postjson[index];
      //       return ListView(
      //         shrinkWrap: true,
      //         children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Date :${load["date"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Localname :${load["localName"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Name :${load["name"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("CountryCode :${load["countryCode"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("fixed :${load["fixed"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("global :${load["global"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("counties :${load["counties"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("launchYear :${load["launchYear"]}"),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("type :${load["type"]}"),
      //         ),
      //         ],
      //       );
      //     }),
    );
  }

  void fetchData() async {
    try {
      final response = await http.get(Uri.parse(url));
      final jsondata = jsonDecode(response.body) as List;
      setState(() {
        _postjson = jsondata;
      });
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Check your internet connection",
          toastLength: Toast.LENGTH_LONG);
    }
  }
}

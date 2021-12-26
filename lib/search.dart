import 'dart:convert';
import 'dart:html';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

// var row = [];
List result = [];
String query = "";
TextEditingController serchText = TextEditingController();
final url = "https://date.nager.at/api/v2/publicholidays/2020/US";
var _postjson = [];

class _searchState extends State<search> {
  // @override
  // void initState() {
  //   row = [
  //     {'name': 'product 1', 'price': 100, 'des': 'this is product detils'},
  //     {'name': 'product 2', 'price': 500, 'des': 'this is product detils'},
  //     {'name': 'product 3', 'price': 400, 'des': 'this is product detils'},
  //     {'name': 'product 4', 'price': 600, 'des': 'this is product detils'}
  //   ];
  // }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: serchText,
              decoration: InputDecoration(
                hintText: ("search  Product"),
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                  searchfun(query);
                });
              },
            ),
            SizedBox(height: 200),
            Container(
                child: query.isEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: _postjson.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(_postjson[index]['name']),
                              onTap: () {
                                setState(() {
                                  serchText.text = _postjson[index]['name'];
                                  query = _postjson[index]['name'];
                                  searchfun(query);
                                });
                              },
                            ),
                          );
                        })
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: result.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(result[index]['name']),
                              onTap: () {
                                setState(() {
                                  serchText.text = result[index]['name'];
                                  query = result[index]['name'];
                                  searchfun(query);
                                });
                              },
                            ),
                          );
                        }))
          ],
        ),
      ),
    );
  }

  searchfun(String query) {
    result = _postjson
        .where((element) =>
            element['name']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            element['date']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase()))
        .toList();
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

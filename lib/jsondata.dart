import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class jsondata extends StatefulWidget {
  jsondata({Key? key}) : super(key: key);

  @override
  _jsondataState createState() => _jsondataState();
}

class _jsondataState extends State<jsondata> {
  final url = "https://jsonplaceholder.typicode.com/posts/";
  var _postjson = [];
  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              final load = _postjson[index];
              return ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Id:${load['userId']}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('id:${load['id']}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('title:${load['title']}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('body:${load['body']}'),
                  ),
                ],
              );
            }));
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

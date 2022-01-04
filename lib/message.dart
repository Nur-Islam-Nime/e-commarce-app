import 'package:flutter/material.dart';

class message extends StatefulWidget {
  message({Key? key}) : super(key: key);

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(227, 237, 247, 1),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Text("Stay with us"),
                ),
              ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        // focusColor: Color.fromRGBO(227, 237, 247, 1),
                        border: InputBorder.none,
                        hintText: "Advice or Complain",
                        labelText: "Message",
                      ),
                    ),
                  ),
                ),
              ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        openDialog();
                      },
                      child: Text(
                        "submit",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                ),
              ),
            ],
          ),
        )));
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("Thanks for your comment"),
          ));
}

import 'package:flutter/material.dart';
import 'neumorphic.dart';

class mnew extends StatelessWidget {
  const mnew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      appBar: AppBar(
        title: Text("appber"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
         child: shadow(),
         
        ),
      ),
    );
  }

  Widget shadow() {
    return Container(
      decoration:
    BoxDecoration(
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
    );
    
  }
}

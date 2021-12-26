import 'package:araianibazar/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dashboard.dart';
import 'login.dart';
import 'modelClass.dart';

class productview extends StatefulWidget {
  final productListModel pro;
  productview(this.pro);

  @override
  _productviewState createState() => _productviewState();
}

class _productviewState extends State<productview> {
  int _selectNavPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Flexible(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
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
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        widget.pro.imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.pro.title,
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        Container(
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
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))
                      ],
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                          child: Text(
                            widget.pro.price.toString(),
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Container(
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
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              rating = rating;
                            },
                          ),
                        )
                      ],
                    ),
                  )),
              Flexible(
                  child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        widget.pro.desc,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )))
            ],
          ),
        ),
      ),
      //   bottomNavigationBar:BottomNavigationBar(
      //     items:[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),]
    );
  }
}

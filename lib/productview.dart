import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'invoice.dart';
import 'modelClass.dart';

class productview extends StatefulWidget {
  final productListModel pro;
  productview(this.pro);

  @override
  _productviewState createState() => _productviewState();
}

class _productviewState extends State<productview> {
  // int _selectNavpossition = 0;
  int count = 1;
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
              child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Center(
                  child: Container(
                    child: Image.asset(widget.pro.imageUrl),
                  ),
                ),
              ),
              Flexible(
                flex: 6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.pro.title,
                            style: TextStyle(color: Colors.black, fontSize: 28),
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
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 8, bottom: 8),
                              child: Text(
                                "Price : \$${widget.pro.price}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
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
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RatingBar.builder(
                                  itemSize: 30,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    rating = rating;
                                  },
                                ),
                              )),
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
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Center(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (count > 1) {
                                                count--;
                                              }
                                            });
                                          },
                                          icon: Icon(Icons.remove))),
                                  VerticalDivider(
                                    color: Colors.black12,
                                    thickness: 1,
                                  ),
                                  Center(
                                    child: Text(
                                      count.toString(),
                                      style: TextStyle(fontSize: 28),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 1,
                                  ),
                                  Center(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        icon: Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Container(
                        child: Text(
                          widget.pro.desc,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(227, 237, 247, 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
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
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => invoice(widget.pro, count)));
          },
          elevation: 0,
          backgroundColor: Color.fromRGBO(227, 237, 247, 1),
          label: Text(
            'Add to Cart',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

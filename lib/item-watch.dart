import 'package:araianibazar/productview.dart';
import 'package:flutter/material.dart';

import 'watch.dart';

class allwatch extends StatelessWidget {
  var watchdata = new watchData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            controller: new ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: watchdata.watchList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (2 / 3),
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15),
            itemBuilder: (BuildContext context, index) {
              return Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                productview(watchdata.watchList[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Image.asset(
                                      watchdata.watchList[index].imageUrl),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Flexible(
                              flex: 1,
                              child: Row(
                                children: [
                                  Text(
                                    watchdata.watchList[index].title,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 4,
                            ),
                            Flexible(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  watchdata.watchList[index].price.toString(),
                                ),
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      )),
    );
  }
}

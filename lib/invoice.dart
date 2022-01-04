import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modelClass.dart';

class invoice extends StatelessWidget {
  final productListModel pro;
  int orderno;
  invoice(this.pro, this.orderno);

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
            centerTitle: true,
            title: Text(
              "Invoice",
              style: TextStyle(color: Colors.black, fontSize: 28),
            )),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
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
                    child: Dismissible(
                      key: ValueKey("abc"),
                      background: Container(
                        color:Colors.red,
                        child:Icon(Icons.delete, size: 40,)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ListTile(
                          leading: Image.asset(pro.imageUrl),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                pro.title,
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "price :\$${pro.price}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(child: Text("Order Detils",style: TextStyle(fontSize: 30))),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Discount :", style: TextStyle(fontSize: 20),),
                                Text("\$${pro.discount}", style: TextStyle(fontSize: 20))
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Price :", style: TextStyle(fontSize: 20)),
                                Text("\$${pro.price}", style: TextStyle(fontSize: 20))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Product Quantity :", style: TextStyle(fontSize: 20)),
                                Text("${orderno}", style: TextStyle(fontSize: 20))
                              ],
                            ),
                          ),

                          Divider(height: 1,thickness: 3,color: Colors.black12,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Amount :", style: TextStyle(fontSize: 20)),
                                Text("= \$${orderno*(pro.price-pro.discount)}", style: TextStyle(fontSize: 20))
                              ],
                            ),
                          ),

                        ],
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
                  child: TextButton(onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Thanks for your order"),
                          );
                    });
                  },
                      child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Cheak Out",style: TextStyle(fontSize: 20, color: Colors.black)),
                  )),
                )

              ],
            ),

            ),
          ),
        )
    );
  }

}

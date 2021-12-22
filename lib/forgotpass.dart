import 'package:araianibazar/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class forgotpass extends StatefulWidget {
  forgotpass({Key? key}) : super(key: key);

  @override
  _forgotpassState createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController rePassController = TextEditingController();
  String userName = '';
  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Container(
                      child: Text(
                        "Change your password",
                        style: TextStyle(fontSize: 20),
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
                    padding: const EdgeInsets.only(
                        left: 25, top: 1, right: 25, bottom: 1),
                    child: TextField(
                      controller: userNameController,
                      decoration: InputDecoration(
                          hintText: "Email or user name",
                          labelText: "User Name",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          // focusColor: Color.fromRGBO(227, 237, 247, 1),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 30),
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
                    padding: const EdgeInsets.only(
                        left: 25, top: 1, right: 25, bottom: 1),
                    child: TextField(
                      controller: newPassController,
                      decoration: InputDecoration(
                          hintText: "New Password",
                          labelText: "New Password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          // focusColor: Color.fromRGBO(227, 237, 247, 1),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 30),
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
                    padding: const EdgeInsets.only(
                        left: 25, top: 1, right: 25, bottom: 1),
                    child: TextField(
                      controller: rePassController,
                      decoration: InputDecoration(
                          hintText: "Re-Enter password",
                          labelText: "password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          // focusColor: Color.fromRGBO(227, 237, 247, 1),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 30),
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
                    padding: const EdgeInsets.only(
                        left: 30, top: 2, right: 30, bottom: 2),
                    child: TextButton(
                        onPressed: () {
                          if (userName == userNameController.text) {
                            if (newPassController.text ==
                                rePassController.text) {
                              setSharedPreferance();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            } else {
                              Fluttertoast.showToast(
                                  msg: 'Please enter a Valid pass',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.SNACKBAR,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            }
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Please enter a Valid user name',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.SNACKBAR,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        },
                        child: Text("Sign in",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  getShapref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      userName = pref.getString('user_name')!;
    });
  }

  setSharedPreferance() async {
    final pref = await SharedPreferences.getInstance();

    pref.setString('pass', newPassController.text);
  }
}

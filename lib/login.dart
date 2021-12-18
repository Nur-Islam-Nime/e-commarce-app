import 'neumorphic.dart';
import 'signUp.dart';
import 'splash.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  void initState() {
    // TODO: implement initState
    errorCheckFun();
    super.initState();
  }

  TextEditingController userNameControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  bool errorcheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    child: Text(
                      "Welcome to \nAraiany Bazar",
                      style: TextStyle(
                        fontFamily: "DancingScript",
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                      controller: userNameControler,
                      decoration: InputDecoration(
                          hintText: "Email or user name",
                          labelText: "User Name",
                          errorText: errorcheck
                              ? "email or user name cannot empty"
                              : null,
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
                SizedBox(
                  height: 40,
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
                      obscureText: true,
                      controller: passControler,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          errorText:
                              errorcheck ? "Password cannot empty" : null,
                          suffixIcon: Icon(Icons.remove_red_eye),
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
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot password?",
                          style: TextStyle(color: Colors.black, fontSize: 16))),
                ),
                SizedBox(height: 20),
                Container(
                  // alignment: Alignment.centerRight,
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
                          // errorCheckFun();
                          errorCheckFun();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => splash()));
                        },
                        child: Text("Sign in",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16))),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => signUp()));
                      },
                      child: Text("Haven't account? Sing up",
                          style: TextStyle(color: Colors.black, fontSize: 16))),
                ),
                SizedBox(height: 7),
                Container(
                  // alignment: Alignment.centerRight,
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => signUp()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  errorCheckFun() {
    if (userNameControler.text.isEmpty ||
        passControler.text.isEmpty ||
        userNameControler.text.length <= 3 ||
        passControler.text.length <= 3) {
      setState(() {
        errorcheck = true;
      });
      return;
    }
  }
}

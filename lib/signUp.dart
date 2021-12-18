import 'package:araianibazar/splash.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController userNameControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  bool errorcheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Container(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 30,
                          color: Colors.black),
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
                        left: 30, top: 1, right: 30, bottom: 1),
                    child: TextField(
                      controller: userNameControler,
                      decoration: InputDecoration(
                          errorText:
                              errorcheck ? "user name cannot empty" : null,
                          hintText: "User name",
                          labelText: "User name",
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
                        left: 30, top: 1, right: 30, bottom: 1),
                    child: TextField(
                      controller: emailControler,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Email or phone number",
                          labelText: "Email",
                          errorText: errorcheck
                              ? "Email or phone number can't empty"
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
                        left: 30, top: 1, right: 30, bottom: 1),
                    child: TextField(
                      obscureText: true,
                      controller: passControler,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          errorText: errorcheck ? "password can't empty" : null,
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
                SizedBox(height: 40),
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

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => splash()));
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text("Already have an account? Sing in",
                          style: TextStyle(color: Colors.black, fontSize: 16))),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

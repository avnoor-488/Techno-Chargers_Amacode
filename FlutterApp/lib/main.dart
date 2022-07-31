import 'dart:convert';
import 'dart:io';

import 'package:amacode/signin.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'amacode.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;

String loginusername = "";
String loginpassword = "";
late String token;
late String errortoken;
bool showSpinner = false;

void main() {
  runApp(MaterialApp(home: login()));
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  loginuser() async {
    var response = await http
        .get(Uri.parse('https://amacode.dead-hacker.tech/api/user'), headers: {
      "content-type": "application/json",
      "accept": "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token",
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => amacode()));
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Logged In'),
        ));
      });
    } else if (response.statusCode != 200) {
      var ress = response.statusCode;
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$ress'),
        ));
      });
    }

    print(response.body);
    print(token);
  }

  void generatetoken() async {
    print(loginusername);
    var response = await http.post(
        Uri.parse('https://amacode.dead-hacker.tech/api/gettoken'),
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
        },
        body: jsonEncode(
          {"username": "$loginusername", "password": "$loginpassword"},
        ));
    print(response.statusCode);
    print(response.body);
    if (response.body ==
        "{\"non_field_errors\":[\"Unable to log in with provided credentials.\"]}") {
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username Or Password Is Wrong'),
        ));
      });
    }
    if (response.body ==
        "{\"username\":[\"This field may not be blank.\"],\"password\":[\"This field may not be blank.\"]}") {
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username Or Password Should Not Be Blank'),
        ));
      });
    }
    if (response.body == "{\"password\":[\"This field may not be blank.\"]}") {
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Password Should Not Be Blank'),
        ));
      });
    }
    if (response.body == "{\"username\":[\"This field may not be blank.\"]}") {
      setState(() {
        showSpinner = false;
      });
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username Should Not Be Blank'),
        ));
      });
    }

    print(response.statusCode);

    Map newtoken = json.decode(response.body);
    token = newtoken['token'];
    setState(() {
      loginuser();
    });
    print(token);
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xf2ffffff),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 14,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.5), //(x,y)
                            blurRadius: 5.0,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff86DAE2),
                            Color(0xffB8F0E3),
                          ],
                        )),
                    child: Center(
                        child: Text("Amazon.in",
                            style: TextStyle(
                                fontFamily: 'regular',
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 10, bottom: 20),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: Colors.black87,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.2), //(x,y)
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: 'regular',
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: TextField(
                              onChanged: (value) {
                                loginusername = value;
                              },
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Color(0xff7a8c99)),
                              textAlign: TextAlign.left,
                              decoration: kTextFieldDecoration2.copyWith(
                                  hintText: "Email Or Phone Number"),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            height: 50,
                            // width: MediaQuery.of(context).size.width / 1.2,
                            child: TextField(
                              onChanged: (value) {
                                loginpassword = value;
                              },
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Color(0xff7a8c99)),
                              textAlign: TextAlign.left,
                              decoration: kTextFieldDecoration2.copyWith(
                                  hintText: "Password"),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          MaterialButton(
                              splashColor: Colors.transparent,
                              color: Colors.deepOrangeAccent,
                              onPressed: () {
                                generatetoken();
                                setState(() {
                                  showSpinner = true;
                                });
                              },
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'regular',
                                    fontSize: 16),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "By continuing, you agree to Amazon's Conditions of Use and Privacy Notice.",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'regular',
                                fontSize: 13),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Text(
                              "New To Amazon?",
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'regular'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                              splashColor: Colors.transparent,
                              color: Colors.deepOrangeAccent,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signin()));
                              },
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'regular',
                                    fontSize: 16),
                              )),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

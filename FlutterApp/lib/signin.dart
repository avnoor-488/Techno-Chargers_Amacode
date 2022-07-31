import 'dart:convert';

import 'package:flutter/material.dart';
import 'const.dart';
import 'amacode.dart';
import 'package:http/http.dart' as http;

late String firstname, username, lastname, phonenumber, userpassword, email;

void main() {
  runApp(MaterialApp(home: signin()));
}

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  void regesteruser() async {
    var response =
        await http.post(Uri.parse('https://amacode.dead-hacker.tech/api/auth'),
            headers: {
              "content-type": "application/json",
              "accept": "application/json",
            },
            body: jsonEncode({
              "username": "$username",
              "first_name": "$firstname",
              "last_name": "$lastname",
              "email": "$email",
              "password": "$userpassword"
            }));
    print(firstname);

    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Account Created'),
        ));
      });
    } else if (response.statusCode != 200) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Some API Issue Or Username or email Already Exist'),
        ));
      });
    }
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  height: MediaQuery.of(context).size.height / 1.4,
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
                          "Sign In",
                          style: TextStyle(
                              fontFamily: 'regular',
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.37,
                              child: TextField(
                                onChanged: (value) {
                                  firstname = value;
                                },
                                keyboardType: TextInputType.name,
                                style: TextStyle(color: Color(0xff7a8c99)),
                                textAlign: TextAlign.left,
                                decoration: kTextFieldDecoration2.copyWith(
                                    hintText: "First Name"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              height: 50,
                              width: MediaQuery.of(context).size.width / 2.37,
                              child: TextField(
                                onChanged: (value) {
                                  lastname = value;
                                },
                                keyboardType: TextInputType.name,
                                style: TextStyle(color: Color(0xff7a8c99)),
                                textAlign: TextAlign.left,
                                decoration: kTextFieldDecoration2.copyWith(
                                    hintText: "Second Name"),
                              ),
                            ),
                          ],
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
                              username = value;
                            },
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Color(0xff7a8c99)),
                            textAlign: TextAlign.left,
                            decoration: kTextFieldDecoration2.copyWith(
                                hintText: "Username"),
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
                              email = value;
                            },
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Color(0xff7a8c99)),
                            textAlign: TextAlign.left,
                            decoration: kTextFieldDecoration2.copyWith(
                                hintText: "Email"),
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
                              phonenumber = value;
                            },
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Color(0xff7a8c99)),
                            textAlign: TextAlign.left,
                            decoration: kTextFieldDecoration2.copyWith(
                                hintText: "Phone Number"),
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
                              userpassword = value;
                            },
                            obscureText: true,
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
                              regesteruser();
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => amacode()));
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
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

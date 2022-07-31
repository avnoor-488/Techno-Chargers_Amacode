import 'dart:io';
import 'package:amacode/scanner.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'amacode.dart';

String logindata = "";
String password = "";
void main() {
  runApp(MaterialApp(home: order()));
}

class order extends StatefulWidget {
  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xf2ffffff),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: Text("Amazon.in",
                            style: TextStyle(
                                fontFamily: 'regular',
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                    Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                        ),
                        child: IconButton(
                            splashColor: Colors.transparent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ScanQrPage()));
                            },
                            icon: Icon(
                              Icons.qr_code_2_outlined,
                              size: 30,
                            )))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 10,
                  top: 15,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 35,
                      color: Color(0xff59A292),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Order placed, thanks!",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'regular',
                            color: Color(0xff59A292),
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 10, top: 5, bottom: 20),
                child: Row(
                  children: [
                    Text("Confirmation will be sent to your email.",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'regular',
                        ))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                            fontFamily: 'regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("TechnoChargers",
                          style:
                              TextStyle(fontFamily: 'regular', fontSize: 16)),
                      Text("Thapar Institute of Engineering and Technology",
                          style:
                              TextStyle(fontFamily: 'regular', fontSize: 16)),
                      Text("Bhadson Rd, Adarsh Nagar, Prem Nagar,",
                          style:
                              TextStyle(fontFamily: 'regular', fontSize: 16)),
                      Text("Patiala, Punjab 147004",
                          style:
                              TextStyle(fontFamily: 'regular', fontSize: 16)),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text("Contact : ",
                              style: TextStyle(
                                  fontFamily: 'regular', fontSize: 16)),
                          Text("+91 7814330849",
                              style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Order Total : ",
                              style: TextStyle(
                                  fontFamily: 'regular', fontSize: 16)),
                          Text("₹1,41,489.00",
                              style: TextStyle(
                                  fontFamily: 'regular',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8),
              child: Text(
                "Unique Tracking ID :",
                style: TextStyle(
                    fontFamily: 'regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: Text(
                "017800f55dd58ec92a8f6c9a1e5ee2cc",
                style: TextStyle(fontFamily: 'regular', fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Unique Tracking ID - This is the Unique ID which is generated when user will place the order. And it should match with the QR which will be printed on the outside wrapping of your package.",
                style: TextStyle(
                    fontFamily: 'regular',
                    color: Color(0xff59A292),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

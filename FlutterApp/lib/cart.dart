import 'package:flutter/material.dart';
import 'const.dart';
import 'amacode.dart';
import 'order.dart';

String logindata = "";
String password = "";
void main() {
  runApp(MaterialApp(home: cart()));
}

class cart extends StatelessWidget {
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
                child: Center(
                    child: Text("Amazon.in",
                        style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffB1D0D4),
                          Color(0xffD5F0ED),
                        ],
                      )),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Deliver to TechnoChargers - Patiala 147001",
                            style: TextStyle(fontFamily: 'regular'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Subtotal ",
                            style:
                                TextStyle(fontFamily: 'regular', fontSize: 18),
                          ),
                          Text(
                            "₹1,41,489.00",
                            style: TextStyle(
                                fontFamily: 'regular',
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Emi Available",
                        style: TextStyle(fontFamily: 'regular', fontSize: 16),
                      ),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 15, right: 8),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 35,
                              color: Color(0xff067D62),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                                "Part of your order qualifies for FREE Delivery.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'regular',
                                  color: Color(0xff067D62),
                                )),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 8, bottom: 15),
                        child: Text("Select this option at checkout.",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'regular',
                              color: Color(0xff067D62),
                            ))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(),
                          splashColor: Colors.transparent,
                          color: Color(0xffF7CA00),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          minWidth: MediaQuery.of(context).size.width / 1.5,
                          height: 50,
                          child: Text(
                            "Proceed to Buy",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'regular',
                                fontSize: 16),
                          )),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/img3.webp",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  //₹60,900
                                  "Apple iPhone 12 (128GB) - Blue",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹60,900",
                                  style: TextStyle(
                                      fontFamily: 'regular', color: Colors.red),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Text(
                                  //₹60,900
                                  "Qty - 1",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/img4.jpg",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  //₹60,900
                                  "SUP Handheld Game Console",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹699",
                                  style: TextStyle(
                                      fontFamily: 'regular', color: Colors.red),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Text(
                                  //₹60,900
                                  "Qty - 1",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/xc.jpg",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  //₹60,900
                                  "Sony WH-1000XM4",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹24,900.00",
                                  style: TextStyle(
                                      fontFamily: 'regular', color: Colors.red),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Text(
                                  //₹60,900
                                  "Qty - 1",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/img7.jpg",
                              scale: 2.5,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  //₹60,900
                                  "Apple iPad Air with Apple M1 Chip",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹60,900",
                                  style: TextStyle(
                                      fontFamily: 'regular', color: Colors.red),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Text(
                                  //₹60,900
                                  "Qty - 1",
                                  style: TextStyle(fontFamily: 'regular'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

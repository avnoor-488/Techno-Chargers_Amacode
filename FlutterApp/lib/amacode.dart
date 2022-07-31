import 'package:amacode/cart.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'buy.dart';

String search = "";
void main() {
  runApp(MaterialApp(home: amacode()));
}

class amacode extends StatefulWidget {
  const amacode({Key? key}) : super(key: key);

  @override
  State<amacode> createState() => _amacodeState();
}

class _amacodeState extends State<amacode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 12,
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
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search, color: Colors.black87),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                          child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: TextField(
                          onChanged: (value) {
                            search = value;
                          },
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Color(0xff7a8c99)),
                          textAlign: TextAlign.left,
                          decoration:
                              kTextFieldDecoration.copyWith(hintText: "Search"),
                        ),
                      )),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.24,
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
                    SizedBox(
                      height: 368,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Best Audio | Headphones",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/img1.jpg")),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Home Entertainment Systems",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("images/img2.jpg")),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Deal Of The Day",
                        style: TextStyle(fontFamily: 'regular', fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards("Apple iPhone 12 (128GB) - Blue", "img3.webp",
                              "₹60,900"),
                          cards("SUP Handheld Game Console", "img4.jpg",
                              "₹699.00 ")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards("Sony WH-1000XM4", "xc.jpg", "₹24,900.00"),
                          cards("2022 Apple iPad Air with Apple M1 Chip",
                              "img7.jpg", "₹54,990.00"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 14,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                //width: MediaQuery.of(context).size.width,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.home_outlined))),
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_outline_outlined)),
                    ),
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cart()));
                          },
                          icon: Icon(Icons.shopping_cart_outlined)),
                    ),
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.view_headline_sharp)),
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

class cards extends StatelessWidget {
  var name;
  var price;
  var img;
  cards(this.name, this.img, this.price);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => buy("$img", "$name", "$price")));
        },
        child: Container(
          width: 150,
          height: 220,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 0.5), //(x,y)
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/$img",
                scale: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "$name",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "$price",
                  style: TextStyle(color: Colors.redAccent),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

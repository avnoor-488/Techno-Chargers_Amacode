import 'package:amacode/order.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'const.dart';

void main() {
  runApp(MaterialApp(home: buy("", "", "")));
}

class buy extends StatefulWidget {
  var img;
  var name;
  var price;
  buy(this.img, this.name, this.price);

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 60,
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
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Color(0xff7a8c99)),
                        textAlign: TextAlign.left,
                        decoration:
                            kTextFieldDecoration.copyWith(hintText: "Search"),
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => cart()));
                        },
                        icon: Icon(Icons.shopping_cart_outlined))
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2828,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
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
                  Image.asset("images/${widget.img}"),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("${widget.name}",
                          style: TextStyle(fontSize: 18))),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("${widget.price}",
                          style: TextStyle(
                              fontSize: 18, color: Colors.redAccent))),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Other Discription And Policies",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 8,
                  color: Color(0xffFA8900),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontFamily: 'regular',
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Already Added To Cart.'),
                      ));
                    });
                  },
                  minWidth: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 8,
                  color: Color(0xffF7CA00),
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontFamily: 'regular',
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

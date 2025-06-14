import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          clipBehavior: Clip.none, // Alternative to overflow: Overflow.visible
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Color(0xff03235a),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "₹2,589.50",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 25,
                        color: Color(0xffd0c8c8),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/premium-photo/cyber-boy-pictures-cute-cyber-boy-image-download-hd_846390-3286.jpg"),
                          radius: 22,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Available Balance",
                          style: TextStyle(color: Color(0xffd0c8c8))),
                      Text(
                        "1",
                        style: TextStyle(color: Color(0xff03235a)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 100,
                          width: 90,
                          color: Color(0xff03235a),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.send_and_archive_outlined,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Text("Send",
                                  style: TextStyle(color: Color(0xffd0c8c8)))
                            ],
                          )),
                      Container(
                          height: 100,
                          width: 90,
                          color: Color(0xff03235a),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.request_quote,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Text("Request",
                                  style: TextStyle(color: Color(0xffd0c8c8)))
                            ],
                          )),
                      Container(
                          height: 100,
                          width: 90,
                          color: Color(0xff03235a),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Text("Pay Contact",
                                  style: TextStyle(color: Color(0xffd0c8c8)))
                            ],
                          )),
                      Container(
                          height: 100,
                          width: 90,
                          color: Color(0xff03235a),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.qr_code,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Text("QR Code",
                                  style: TextStyle(color: Color(0xffd0c8c8)))
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 190,
              left: 0,
              child: Container(
                  width: 360,
                  height: 600,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      color: Color(0xffe1e1e1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Recent Transactions",
                            style: TextStyle(
                                color: Color(0xff03235a),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                color: Color(0xff03235a),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(
                                    color: Color(0xff03235a),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.greenAccent,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Increment",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.orangeAccent,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Express",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text("TODAY",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 140,
                            width: 330,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffd7f3ff),
                                      ),
                                      child: Icon(
                                          Icons.local_grocery_store_outlined),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Grocery",
                                                style: TextStyle(
                                                    color: Color(0xff03235a),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Text(
                                                "- ₹100.69",
                                                style: TextStyle(
                                                    color: Color(0xff03235a),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Online Shopping",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Text(
                                                "Feb 4",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffd7f3ff),
                                      ),
                                      child: Icon(Icons.card_travel),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Transport",
                                                style: TextStyle(
                                                    color: Color(0xff03235a),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Text(
                                                "- ₹51.00",
                                                style: TextStyle(
                                                    color: Color(0xff03235a),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "UBER",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 137,
                                              ),
                                              Text(
                                                "Feb 4",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text("YESTERDAY",
                              style: TextStyle(
                                  color: Color(0xff908f8f),
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 330,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffd7f3ff),
                                      ),
                                      child: Icon(Icons.payment),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Payment",
                                                style: TextStyle(
                                                    color: Color(0xff03235a),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Text(
                                                "+ ₹5000.00",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Payment from Bala",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              Text(
                                                "Feb 3",
                                                style: TextStyle(
                                                  color: Color(0xff908f8f),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              color: Color(0xffe1e1e1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.home,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Text("Home",
                                      style:
                                          TextStyle(color: Color(0xff908f8f)))
                                ],
                              )),
                          Container(
                              height: 70,
                              width: 70,
                              color: Color(0xffe1e1e1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.history,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Text("History",
                                      style:
                                          TextStyle(color: Color(0xff908f8f)))
                                ],
                              )),
                          Container(
                              height: 70,
                              width: 70,
                              color: Color(0xffe1e1e1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Center(
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Color(0xff03235a),
                                            borderRadius:
                                                BorderRadius.circular(13)),
                                        child: Center(
                                          child: Text(
                                            "+",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                ],
                              )),
                          Container(
                              height: 70,
                              width: 70,
                              color: Color(0xffe1e1e1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.card_membership,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Text("Cords",
                                      style:
                                          TextStyle(color: Color(0xff908f8f)))
                                ],
                              )),
                          Container(
                              height: 70,
                              width: 70,
                              color: Color(0xffe1e1e1),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Text("Profile",
                                      style:
                                          TextStyle(color: Color(0xff908f8f)))
                                ],
                              )),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

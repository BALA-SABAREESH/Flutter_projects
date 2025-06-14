// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 310,
                  width: 340,
                  color: Color(0xffe8e7e7),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 70,
                          width: 340,
                          color: Color(0xffe8e7e7),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xffe8e7e7),
                                backgroundImage: NetworkImage(
                                    "https://media.licdn.com/dms/image/v2/C560BAQFQa8Pv1Gz1UA/company-logo_100_100/company-logo_100_100/0/1659945576317/neokred_logo?e=2147483647&v=beta&t=6TKVcjzxY55c3UAALCE76RDkbMSSWH1GseBTqpIJ-OY"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Neopay",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Container(
                                width: 50, // Container width
                                height: 50, // Container height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      45), // Optional, for rounded corners
                                  color: Color(
                                      0xffd2d0d0), // Container background color
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 23, // Circle Avatar size
                                      backgroundColor: Color(0xffd2d0d0),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: NetworkImage(
                                            'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                        backgroundColor: Color(0xffe8e7e7),
                                      ), // Optional: Avatar background color
                                    ),
                                    Icon(
                                      Icons
                                          .notifications_none, // Icon inside the CircleAvatar
                                      color: Color(0xff292828), // Icon color
                                      size: 21, // Icon size
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 210,
                        width: 310,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Neo Cash Main Balance",
                                  style: TextStyle(
                                      color: Color(0xffd2d0d0), fontSize: 15),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "l",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 5),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  "₹",
                                  style: TextStyle(
                                      color: Color(0xffd2d0d0), fontSize: 30),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1,459.70",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  width: 110,
                                ),
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color(0xffd2d0d0),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "Neopay Number",
                                      style: TextStyle(
                                        color: Color(0xffd2d0d0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text(
                                      "Neopay points",
                                      style: TextStyle(
                                        color: Color(0xffd2d0d0),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      ".... .... .... 5324",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Text(
                                      "🔗 320 Points",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xff87fb02)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          "🡥 Transfer",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xff87fb02)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          "🡧 Withdraw",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              45), // Optional, for rounded corners
                          color:
                              Color(0xffe3e0e0), // Container background color
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23, // Circle Avatar size
                              backgroundColor: Color(0xffedebeb),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                backgroundColor: Colors.white,
                              ), // Optional: Avatar background color
                            ),
                            Icon(
                              Icons
                                  .currency_bitcoin_outlined, // Icon inside the CircleAvatar
                              color: Color(0xff292828), // Icon color
                              size: 21, // Icon size
                            ),
                          ],
                        ),
                      ),
                      Text("Crypto")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              45), // Optional, for rounded corners
                          color:
                              Color(0xffe3e0e0), // Container background color
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23, // Circle Avatar size
                              backgroundColor: Color(0xffedebeb),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                backgroundColor: Colors.white,
                              ), // Optional: Avatar background color
                            ),
                            Icon(
                              Icons.wifi, // Icon inside the CircleAvatar
                              color: Color(0xff292828), // Icon color
                              size: 21, // Icon size
                            ),
                          ],
                        ),
                      ),
                      Text("Internet")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              45), // Optional, for rounded corners
                          color:
                              Color(0xffe3e0e0), // Container background color
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23, // Circle Avatar size
                              backgroundColor: Color(0xffedebeb),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                backgroundColor: Colors.white,
                              ), // Optional: Avatar background color
                            ),
                            Icon(
                              Icons
                                  .shopping_bag_outlined, // Icon inside the CircleAvatar
                              color: Color(0xff292828), // Icon color
                              size: 21, // Icon size
                            ),
                          ],
                        ),
                      ),
                      Text("Shoping")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              45), // Optional, for rounded corners
                          color:
                              Color(0xffe3e0e0), // Container background color
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23, // Circle Avatar size
                              backgroundColor: Color(0xffedebeb),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                backgroundColor: Colors.white,
                              ), // Optional: Avatar background color
                            ),
                            Icon(
                              Icons.flight, // Icon inside the CircleAvatar
                              color: Color(0xff292828), // Icon color
                              size: 21, // Icon size
                            ),
                          ],
                        ),
                      ),
                      Text("Ticket")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              45), // Optional, for rounded corners
                          color:
                              Color(0xffe3e0e0), // Container background color
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 23, // Circle Avatar size
                              backgroundColor: Color(0xffedebeb),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.example.com/your-image.jpg'), // Optional: Add image to circle
                                backgroundColor: Colors.white,
                              ), // Optional: Avatar background color
                            ),
                            Icon(
                              Icons
                                  .medical_information, // Icon inside the CircleAvatar
                              color: Color(0xff292828), // Icon color
                              size: 21, // Icon size
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Others",
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Recent Transaction",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    "Show More",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xffe8e7e7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://play-lh.googleusercontent.com/BXk3A62ATYuq6dDq6DksAxwfz_R8a19hGJ8ab4sUN7-Lr69_5aEA6i--NXSKI9-5yg"),
                        radius: 30,
                      ),
                      title: Text("Transfer For Gojo"),
                      subtitle: Text("January 15,2025"),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "✙ ₹ 230",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            "Neo Cash",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xffe8e7e7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://w0.peakpx.com/wallpaper/134/43/HD-wallpaper-netflix-netflix-site.jpg"),
                        radius: 30,
                      ),
                      title: Text("Payment Netflix "),
                      subtitle: Text("December 26,2024"),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "− ₹ 199",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            "Neo Cash",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xffe8e7e7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://asset.gecdesigns.com/img/wallpapers/smiling-anime-school-boy-with-backpack-ai-generated-wallpaper-sr08072437-cover.webp"),
                        radius: 30,
                      ),
                      title: Text("Transfer For Sivan"),
                      subtitle: Text("July 19,2024"),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "✙ ₹ 500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            "Neo Cash",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xffe8e7e7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.sanity.io/images/599r6htc/regionalized/5094051dac77593d0f0978bdcbabaf79e5bb855c-1080x1080.png?w=540&h=540&q=75&fit=max&auto=format"),
                        radius: 30,
                      ),
                      title: Text("Payment Figma Pro"),
                      subtitle: Text("March 18,2024"),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "− ₹ 175",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            "Neo Cash",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

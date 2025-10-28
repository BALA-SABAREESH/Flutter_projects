// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                child: const Row(children: [
                  SizedBox(width: 10),
                  SizedBox(width: 240),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff626161),
                    child: Icon(
                      Icons.search,
                      color: Color(0xffd0cece),
                      size: 25,
                    ),
                  ),
                  SizedBox(width: 13),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2023/08/17/18/59/ai-generated-8197193_1280.jpg"),
                  )
                ]),
              ),

              // 🧩 Main Content
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    color: Colors.black,
                    child: Text(
                      'A Complete platform\nfor business and\nStartups',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 👥 Overlapping Avatars + ⭐ Rating Box
                  SizedBox(
                    height: 100,
                    width: 360,
                    child: Stack(
                      children: [
                        // 1st Avatar
                        const Positioned(
                          left: 25,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://pict.ai/images/secure/z2LRym/j44Ydr1njK4B9uS_1727697786.png"),
                            ),
                          ),
                        ),

                        // 2nd Avatar
                        const Positioned(
                          left: 60,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://cdn.wallpapersafari.com/15/80/rEo4pP.jpg"),
                            ),
                          ),
                        ),

                        // 3rd Avatar
                        const Positioned(
                          left: 95,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://4kwallpapers.com/images/wallpapers/one-piece-gear-5-luffy-2560x1440-12504.png"),
                            ),
                          ),
                        ),

                        // +2 Avatar
                        Positioned(
                          left: 130,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Color(0xff615f5f),
                              child: Text(
                                "+2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // ⭐ Rating Box on right side
                        Positioned(
                          left: 240,
                          top: 0,
                          child: Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff666464),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 22),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Rating",
                                  style: TextStyle(
                                    color: Color(0xffd0c7c7),
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 120,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xfff495b4),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Color(0xfff495b4), // glowing white shadow
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 8),
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "Project\nManager",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "4.5K Download",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.arrow_outward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                          height: 120,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff8ec5e4),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Color(0xff8ec5e4), // glowing white shadow
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 8),
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "Delivery\nMobile App",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "200 Download",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.arrow_outward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 120,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff58de8c),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Color(0xff58de8c), // glowing white shadow
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 8),
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "Data\nPlatform",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "20K Download",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.arrow_outward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                          height: 120,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffc27fe6),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Color(0xffc27fe6), // glowing white shadow
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 8),
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "Business\nMobile App",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "10k Download",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.arrow_outward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 130,
                          width: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffbfef77),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      Color(0xffbfef77), // glowing white shadow
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 8),
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "Business Management\nPlatform",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: 11,
                                        ),
                                        Text(
                                          "200 Download",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.arrow_outward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

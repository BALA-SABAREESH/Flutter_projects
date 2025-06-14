// ignore_for_file: prefer_const_constructors

import 'dart:html';
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
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 350,
                width: double.infinity,
                //color: Colors.red,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 360,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "data:image/jpeg;base64,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"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(28),
                            bottomRight: Radius.circular(105),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9HMWHA-xM1j_GVHe59_iyycPJSjYQ78MYPA&s"),
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjhvD5rm7FVaZIvotDitBQ6JxJNJmAZSWuvg&s"),
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSur_vzUfEksjXm_ZDO-fy7PwORLgnwQqfCPw&s"),
                        ],
                      ),
                    ])),
            Text(
              "Juicy Roasted Chicken",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "    Behind-the-scenes content: Share content about what happens behind the scenes at your chicken shopStaff features: Highlight your staff members.Local events: Discuss local events.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Rs.250",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Text(
                      "1+1 Offer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 19),
                        ),
                        Icon(Icons.star, color: Colors.yellow)
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 40,
      child: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 35,
      ),
    );
  }
}

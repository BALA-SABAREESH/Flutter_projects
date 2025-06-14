// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Student Details",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff2ea99d),
        ),
        body: Column(
          children: [
            ExpansionTileCard(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHtPJ75LI5o1HAnVSKm6ViQ4PwFT3fK1uua-zQr30aYNhMnB_RaPU5fq70a5zIOs2DbrI&usqp=CAU"),
                radius: 25,
              ),
              title: Text(
                "Bala sabareesh",
                style: TextStyle(color: Color(0xff6a15fc), fontSize: 21),
              ),
              subtitle: Text(
                "2303737710421005",
                style: TextStyle(fontSize: 17),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ": B+ ve",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.indigo,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ": 5684034428",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ": 18/3, Kamesh Apartments,.62 nd \n Street, Ashok Nagar,.Chennai",
                        style: TextStyle(fontSize: 19),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonBar(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  color: Colors.pinkAccent,
                                ),
                                Text("Exam Details",
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.book,
                                  color: Colors.pinkAccent,
                                ),
                                Text(
                                  "Attendance Details",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.money,
                                  color: Colors.pinkAccent,
                                ),
                                Text("Fees Details",
                                    style: TextStyle(fontSize: 12)),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

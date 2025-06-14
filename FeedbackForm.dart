import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String degree = "degree";
bool chv1 = false;
bool chv2 = false;
bool chv3 = false;
bool chv4 = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVAS6Is64l8dxPaBc-PxKyK8fEnnebDtkZnw&s"),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              "Feedback Form",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              height: 350,
              width: double.infinity,
              child: SingleChildScrollView(
                //this line for scrolling
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      //Name text box
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Color(0xff05d0ae),
                          hintText: "Enter Your Name: ",
                          fillColor: Colors.red,
                          labelText: "Your Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // hoverColor: Colors.red,
                        ),
                      ),
                    ),
                    //contect number

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          prefixIconColor: Color(0xff0597d0),
                          hintText: "Enter Your WhatsApp No: ",
                          fillColor: Colors.red,
                          labelText: "WhatsApp No",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // hoverColor: Colors.red,
                        ),
                      ),
                    ),
                    Text(
                      "Your Degree",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff231b8)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Radio(
                            value: "UG",
                            groupValue: degree,
                            onChanged: (Value) {
                              print(
                                  "UG"); //click the radio button ug will print
                            }),
                        Text("UG Student"),
                        SizedBox(
                          height: 10,
                        ),
                        Radio(
                            value: "PG",
                            groupValue: degree,
                            onChanged: (Value) {
                              print(
                                  "PG"); //click the radio button pg will print
                            }),
                        Text("PG Student"),
                        SizedBox(
                          height: 10,
                        ),
                        Radio(
                            value: "Developer",
                            groupValue: degree,
                            onChanged: (Value) {
                              print(
                                  "Developer"); //click the radio button developer will print
                            }),
                        Text("Developer"),
                        //click the radiobutton  Developer will print
                      ],
                    ),
                    Text("Favorite Program",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff231b8))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                              value: chv1,
                              onChanged: (value) {
                                print(
                                    "Flutter"); //click the checkBox  Flutter will print
                              }),
                          Text("Flutter"),
                          Checkbox(
                              value: chv2,
                              onChanged: (value) {
                                print("Java");
                              }),
                          Text("Java"),
                          Checkbox(
                              value: chv3,
                              onChanged: (value) {
                                print("Node js");
                              }),
                          Text("Node js"),
                          Checkbox(
                              value: chv4,
                              onChanged: (value) {
                                print("React");
                              }),
                          Text("React"), //click the ckeckbox  React will print
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        maxLines: 3, //maxinum line for feedback text
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Enter Your Feedback: ",
                          fillColor: Colors.red,
                          labelText: "Your Feedback",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'dart:html';

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
            backgroundColor: Color(0xff075e54),
            title: Text(
              "WhatsApp",
              style:
                  TextStyle(fontStyle: FontStyle.normal, color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              buildListTile("Bala", "Hi who are you",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi04F7-A-bmNsMnDF97YzBkyFhzMRLWAkClwd_de6UOLSTlZ0C3GOsXidfsxaJv5_1AFM&usqp=CAU"),
              buildListTile("Mani", "Hello",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6guCcUfsgBLMJu4iEdusSTGnSDwYfkyAHVg&s"),
              buildListTile("Shree", "hi thambi",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpXH9bbTOTYNki420QARnEmvToYUvrHfE6SQ&s"),
            ],
          )),
    );
  }

  ListTile buildListTile(
    title,
    subtitle,
    img,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("11/01/2025"),
          Icon(Icons.done_all),
        ],
      ),
    );
  }
}

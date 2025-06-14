import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("MessageBox clicked");
          },
          child: Icon(Icons.message),
          backgroundColor: Colors.greenAccent,
          elevation: 40,
        ),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "FirstApp",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            )
          ],
          //leading: Icon(
          //Icons.menu,
          //color: Colors.white,
        ),
        body: Center(
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                  child: Text(
                    "click here",
                  )),
              ElevatedButton(
                  onPressed: () {
                    print("Button Clicked");
                  },
                  child: Text(
                    "click here",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

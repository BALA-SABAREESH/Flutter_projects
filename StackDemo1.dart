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
        appBar: AppBar(title: Text('Stack Overflow Example')),
        body: Center(
          child: Stack(
            clipBehavior:
                Clip.none, // Alternative to overflow: Overflow.visible
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Positioned(
                top: 120,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
